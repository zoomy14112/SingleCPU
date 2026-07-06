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
    - Depth: 8192, Data Width: 32, Memory Type: ROM
    - Coefficients File: `./*.coe`
- RAM: Block Memory Generator
    - Component Name: RAM_B
    - Byte Write Enable(checked), Byte size: 8
    - Write/Read Width: 32, Write/Read Depth: 2048, Enable Port Type: Always Enabled
    - Coe File: `./*.coe`

Simulation settings: xsim.simulate.runtime should be greater than 1s; 10s preferred.

### TIMELINE

- 2026.3.13：导入所有下发文件，完成 `main.v` 模块。
- 2026.3.22：移除 `SCPU.edf` 和 `dm_controller.edf`，完成 `SCPU.v` 及 `dm_controller.v` 模块。
- 2026.3.23：添加 `hack.coe`，其效果是跳过 `testAC.coe` 中的六个测试函数，直接进入显示 AC 动画的函数。
- 2026.3.24：添加由 [@kiwiizzz](https://github.com/whoisKIWIIZZZ) 提供的仿真文件 `simulate.v`，但是无法访问 RAM。推测这是 `MIO_bus.v` 未实现导致的问题。
- 2026.3.25：发现重大 bug：此前成功显示 AC 的原因是输入到 ROM 的 PC_out 高位被截断，丢失部分信息。
- 2026.3.26：已修复上述重大 bug，但仍不保证一定能成功运行。
- 2026.3.27：移除 `MIO_bus.edf` 并实现了简陋的 `MIO_bus.v` 以供仿真，至此已成功完成单周期 CPU。
- 2026.3.30：完成五级流水线 CPU 并通过仿真测试，但下板失败；使用 Load-Use Stall 和旁路解决数据冒险，使用静态预测不跳转解决控制冒险。
- 2026.3.31：清空项目目录 `./NewCPU/` 并重新创建项目从而解决下板失败的问题，现支持 50Mhz 分频；实现两位分支预测器，准确率为 54.17%，支持 100Mhz 分频。
- 2026.4.1：进一步优化两位分支预测器，使准确率提高到 69.10%；实现 Return Address Stack(RAS)，使准确率提高到 71.43%。
- 2026.4.3：安装 RISC-V 交叉编译工具链。
- 2026.4.4：尝试以轮询方式访问外设，可读取 switch 的信息并控制 led 与数码管的输出。
- 2026.4.5：完成 `audio.v` 模块与 `keyboard.v` 模块，可通过键盘按键控制输出声音的音量。
- 2026.4.6：修改 `audio.v` 并实现高级语言程序 `./backup/piano.c`，生成类似 midi 键盘的 `./backup/piano.bit`。
- 2026.4.7：完成外设中断，但与键盘有关的信息传递仍存在问题：触发中断后有概率出现不再响应任何中断的情形。
- 2026.4.8：修改中断处理逻辑，修复上述问题。
- 2026.4.9：修改 `audio.v` 模块的逻辑使之更适应中断，发现问题：在离开中断处理程序执行 `mret` 时有概率跳转到 0x0。
- 2026.4.11：通过修改 `stack.v` 模块中 always 块的触发条件，解决上述问题；至此，已彻底完成外设中断。
- 2026.4.17：为 `audio.v` 模块添加调节音量的功能，`audio.v` 模块出现偶发不发声的问题。
- 2026.5.3：修复 `audio.v` 模块偶发不发声问题，至此彻底完成；尝试引入 SD 卡。
- 2026.5.15：引入 SD 卡失败，验收通过，项目终止。

### COOPERATION

**[@kiwiizzz](https://github.com/whoisKIWIIZZZ) and his [repository](https://github.com/whoisKIWIIZZZ/SCPU-RISCV)**
