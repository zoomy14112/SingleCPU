@echo off
echo Cleaning up .out, .vcd files and results.txt...
del /f /q *.out *.vcd results.txt pc.txt
echo Done.
@REM ! 根据你的项目结构和文件命名，调整下面的命令以正确编译和运行测试
iverilog -Wall -g2012 -I ..\CPU -o a.out *.v ..\CPU\*.v ..\Device\*.v
vvp a.out 