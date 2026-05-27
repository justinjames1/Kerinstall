echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo installing kernaline os files please wait...
git clone https://github.com/justinjames1/KERALINE-OS.git
apk add unzip
apk add nasm
apk add gcc
apk add build-base musl-dev libc-dev #the compiler fucking broke without this.
echo preparing files for compileing.....
mv KERALINE-OS/* .

echo comepleted preping files for compilation.

nasm -f bin bootloader/BOOTSECTION.asm -o BOOTSECTION.bin
cat BOOTSECTION.bin

cc bootloader/Kernel_jmp.c -o Kernel_jmp.c
cat bootloader/Kernel_jmp.c

cc /root/kernel/Disk/Diskmanage.h -o Diskmanage.bin

cat /root/kernel/Disk/Diskmanage.bin

cc /root/kernel/Disk/Diskmanage_code.c -o Diskmanage_code.bin

cat /root/kernel/Disk/Diskmanage_code.bin

cc /root/kernel/CPU/Interrupt.h -o Interrupt.bin

cat /root/kernel/CPU/Interrupt.bin

cc /root/kernel/CPU/Interrupt_code.c -o Interrupt_code.bin

cat /root/kernel/CPU/Interrupt_code.bin

cc /root/kernel/Memory/Memcall.h -o Memcall.bin

cat /root/kernel/Memory/Memcall.bin

cc /root/kernel/Memory/Memcall_code.c -o Memcall_code.bin

cat /root/kernel/Memory/Memcall_code.bin

cc /root/kernel/Panic/kernel_panic.c -o kernel_panic.bin

cat /root/kernel/Panic/kernel_panic.bin

nasm -f bin /root/kernel/VGAcontrol.asm -o VGAcontrol.bin

cat /root/kernel/VGAcontrol.bin

cc /root/Commandprompt.c -o Commandprompt.bin

cat /root/Commandprompt.bin

echo [if it says error with cat thats fine.]
echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....

rm *.c
rm *.h
rm *.asm


echo =====================================
echo sucessfully completed installation.
echo =====================================
