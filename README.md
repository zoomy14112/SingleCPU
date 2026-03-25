### TIPS

使用方法与开发板参数详见 `./sources/how-to-use-vivado.pptx`。

IP-core settings: The depth of ROM should be 2048, the depth of RAM should be 8192.

Simulation settings: xsim.simulate.runtime should be greater than 1s; 10s preferred.

### TIMELINE

- 2026.3.13：导入所有下发文件，完成 `main.v` 模块。
- 2026.3.22：移除 `SCPU.edf` 和 `dm_controller.edf`，完成 `SCPU.v` 及 `dm_controller.v` 模块。
- 2026.3.23：添加 `hack.coe`，其效果是跳过 `testAC.coe` 中的六个测试函数，直接进入显示 AC 动画的函数。
- 2026.3.24：添加由 [@kiwiizzz](https://github.com/whoisKIWIIZZZ) 提供的仿真文件 `simulate.v`，但是无法访问 RAM。推测是 `MIO_bus.v` 未实现的问题。
- 2026.3.25：发现重大 bug：此前成功显示 AC 的原因是输入到 ROM的 PC_out 高位被截断，丢失部分信息。

**暂时不保证此项目的正确性**