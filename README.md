### TIPS

使用方法与开发板参数详见 `./sources/how-to-use-vivado.pptx`。

- Project Type: RTL project
- Boards: Artix-7 xc7a100tcsg324-1
- add files:
    - Constraints: `./sources/icf.xdc`
    - Design Sources: `./modules/`
    - Simulation Sources: `./simulate.v`
- ROM: Distributed Memory Generator
    - Component Name: ROM_D
    - Depth: 2048, Data Width: 32, Memory Type: ROM
    - Coefficients File: `./sources/I_mem.coe` or `./sources/testAC.coe` or `./sources/hack.coe`
- RAM: Block Memory Generator
    - Component Name: RAM_B
    - Byte Write Enable(checked), Byte size: 8
    - Write/Read Width: 32, Write/Read Depth: 1024, Enable Port Type: Always Enabled
    - Coe File: `./sources/D_mem.coe`

Simulation settings: xsim.simulate.runtime should be greater than 1s; 10s preferred.

### TIMELINE

- 2026.3.13：导入所有下发文件，完成 `main.v` 模块。
- 2026.3.22：移除 `SCPU.edf` 和 `dm_controller.edf`，完成 `SCPU.v` 及 `dm_controller.v` 模块。
- 2026.3.23：添加 `hack.coe`，其效果是跳过 `testAC.coe` 中的六个测试函数，直接进入显示 AC 动画的函数。
- 2026.3.24：添加由 [@kiwiizzz](https://github.com/whoisKIWIIZZZ) 提供的仿真文件 `simulate.v`，但是无法访问 RAM。推测这是 `MIO_bus.v` 未实现导致的问题。
- 2026.3.25：发现重大 bug：此前成功显示 AC 的原因是输入到 ROM 的 PC_out 高位被截断，丢失部分信息。
- 2026.3.26：已修复上述重大 bug，但不保证一定能成功运行。