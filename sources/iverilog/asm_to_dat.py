#!/usr/bin/env python3
"""Assemble RV32I asm and emit .dat (one 32-bit instruction per line).

Usage:
  python asm_to_dat.py input.asm output.dat

Optional:
  set RISCV_PREFIX to your toolchain prefix, e.g. riscv64-unknown-elf
  
建议使用 WSL 环境以获取对应的 RISC-V 工具链，更加方便。蔡老师的 PPT 应该说过
"""

from __future__ import annotations

import argparse
import pathlib
import re
import shutil
import subprocess
import sys
import tempfile


def find_prefix() -> str:
    import os

    env_prefix = os.environ.get("RISCV_PREFIX")
    candidates = [env_prefix] if env_prefix else []
    candidates.extend(["riscv32-unknown-elf", "riscv64-unknown-elf"])

    for prefix in candidates:
        if not prefix:
            continue
        if shutil.which(f"{prefix}-as") and shutil.which(f"{prefix}-ld") and shutil.which(f"{prefix}-objdump"):
            return prefix

    raise RuntimeError(
        "Cannot find toolchain. Install riscv*-unknown-elf tools or set RISCV_PREFIX."
    )


def run(cmd: list[str]) -> str:
    proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if proc.returncode != 0:
        raise RuntimeError(
            "Command failed:\n"
            + " ".join(cmd)
            + "\n\nstdout:\n"
            + proc.stdout
            + "\nstderr:\n"
            + proc.stderr
        )
    return proc.stdout


def parse_objdump_text(text: str) -> list[str]:
    # Example line:
    #    0: 000002b7            lui t0,0x0
    line_re = re.compile(r"^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]{8})\b")
    items: list[tuple[int, str]] = []

    for line in text.splitlines():
        m = line_re.match(line)
        if not m:
            continue
        addr = int(m.group(1), 16)
        inst = m.group(2).lower()
        items.append((addr, inst))

    if not items:
        raise RuntimeError("No instructions parsed from objdump output.")

    items.sort(key=lambda x: x[0])

    # Fill missing words with NOP (addi x0, x0, 0)
    out: list[str] = []
    cur = items[0][0]
    i = 0

    while i < len(items):
        addr, inst = items[i]
        while cur < addr:
            out.append("00000013")
            cur += 4
        out.append(inst)
        cur += 4
        i += 1

    return out


def asm_to_dat(src: pathlib.Path, dst: pathlib.Path) -> None:
    prefix = find_prefix()

    with tempfile.TemporaryDirectory() as td:
        td_path = pathlib.Path(td)
        obj = td_path / "prog.o"
        elf = td_path / "prog.elf"

        run([f"{prefix}-as", "-march=rv32i", "-mabi=ilp32", str(src), "-o", str(obj)])
        run([f"{prefix}-ld", "-m", "elf32lriscv", "-Ttext", "0x0", str(obj), "-o", str(elf)])
        dis = run([f"{prefix}-objdump", "-d", str(elf)])

    words = parse_objdump_text(dis)
    dst.write_text("\n".join(words) + "\n", encoding="ascii")


def main() -> int:
    parser = argparse.ArgumentParser(description="Assemble RV32I .asm to .dat")
    parser.add_argument("input", type=pathlib.Path, help="Input asm file")
    parser.add_argument("output", type=pathlib.Path, help="Output .dat file")
    args = parser.parse_args()

    if not args.input.exists():
        print(f"Input file not found: {args.input}", file=sys.stderr)
        return 2

    try:
        asm_to_dat(args.input, args.output)
    except Exception as e:
        print(str(e), file=sys.stderr)
        return 1

    print(f"Generated: {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
