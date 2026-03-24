### TIPS

使用方法详见 `./sources/how-to-use-vivado.pptx`。

> IP-core settings:
> the input of ROM should be PC[13:2], with 12-bit address, 4096 width
> the input of RAM should be {2'b0,addra}, with 12-bit address 4096 width

### TIMELINE

- 2026.3.13：导入所有下发文件，完成 `main.v` 模块。
- 2026.3.22：移除 `SCPU.edf` 和 `dm_controller.v`，完成 `SCPU.v` 及 `dm_controller.v` 模块。
- 2026.3.23：添加 `hack.coe`，其效果是跳过 `testAC.coe` 中的六个测试函数，直接进入显示 AC 动画的函数。
- 2026.3.24：添加由 [@kiwiizzz](https://github.com/whoisKIWIIZZZ) 提供的 `simulate.v`，但是无法访问 RAM。