echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo installing kernaline os files please wait...
git clone https://github.com/justinjames1/KERALINE-OS.git
sudo apt install unzip
sudo apt install nasm
sudo apt install gcc
sudo apt install build-base musl-dev libc-dev #the compiler fucking broke without this.
echo preparing files for compiling.....
mv KERALINE-OS/* .

echo completed preping files for compilation.

nasm -f bin bootloader/BOOTSECTION.asm -o BOOTSECTION.bin
gcc bootloader/Kernel_jmp.c -o Kernel_jmp.c

gcc kernel/CPU/Interrupt.h -o kernel/CPU/Interrupt.bin

gcc kernel/CPU/Interrupt_code.c -o kernel/CPU/Interrupt_code.bin

gcc kernel/CPU/Sleep.c -o kernel/CPU/Sleep.bin

gcc kernel/Crash_handler/Memory_crash.c -o kernel/Crash_handler/Memory_crash.bin

gcc kernel/Disk/Diskmanage.h -o kernel/Disk/Diskmanage.bin

gcc kernel/Disk/Diskmanage_code.c -o kernel/Disk/Diskmanage_code.bin

gcc kernel/IPC/IPC.c -o kernel/IPC/IPC.bin

gcc kernel/Krnlcall/Disk_call.c -o kernel/Krnlcall/Disk_call.bin

gcc kernel/Krnlcall/Interrupt_call.c -o kernel/Krnlcall/Interrupt_call.bin

gcc kernel/Memory/Memcall.h -o kernel/Memory/Memcall.bin

gcc kernel/Memory/Memcall_code.c -o kernel/Memory/Memcall_code.bin

gcc kernel/Panic/kernel_panic.c -o kernel/Panic/kernel_panic.bin

gcc kernel/Process_scheduler/Pid_manage.h -o kernel/Process_scheduler/Pid_manage.bin

gcc kernel/Process_scheduler/Pid_manage_code.c -o kernel/Process_scheduler/Pid_manage_code.bin

gcc kernel/KBJ.c -o kernel/KBJ.bin

nasm -f bin kernel/VGAcontrol.asm -o kernel/VGAcontrol.bin


echo [if it says error with cat thats fine.]
echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....

rm -rf *.c
rm -rf *.h
rm -rf *.asm


echo =====================================
echo successfully completed installation.
echo =====================================
