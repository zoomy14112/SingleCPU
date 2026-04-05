main : *.*
	clear
	riscv32-unknown-elf-gcc ./program/test.c -o ./program/test -O1 -nostartfiles -nostdlib -e start -Wl,-Ttext-segment,-0x74
	riscv32-unknown-elf-objdump -d ./program/test > ./program/test.s
	cat ./program/test.s | grep -E '^\s*[0-9a-f]+:.*$$' | grep -o -E '^\s*[0-9a-f]+:\s*[0-9a-f]+' | grep -o -E '[0-9a-f]+$$' > ./program/test.dat
	cat ./program/test.dat | sed ':a;N;s/\n/,/g;ta' | sed '1i;1.asm\nmemory_initialization_radix=16;\nmemory_initialization_vector=' | sed '$$s/$$/;/g' > ./program/test.coe