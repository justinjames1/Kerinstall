echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo installing kernaline os files please wait...
apk add git
git clone https://github.com/justinjames1/KERALINE-OS.git
apk add unzip
apk add nasm
apk add gcc
apk add build-base musl-dev libc-dev #the compiler fucking broke without this.
echo preparing files for compileing.....
mv KERALINE-OS/* .

echo comepleted preping files for compilation.

nasm -f bin bootloader/BOOTSECTION.asm -o BOOTSECTION.bin
truncate BOOTSECTION.bin -s 512

cc bootloader/Kernel_jmp.c -o Kernel_jmp.c

cc kernel/CPU/Interrupt.h -o kernel/CPU/Interrupt.bin

cc kernel/CPU/Interrupt_code.c -o kernel/CPU/Interrupt_code.bin

cc kernel/CPU/Sleep.c -o kernel/CPU/Sleep.bin

cc kernel/Crash_handler/Memory_crash.c -o kernel/Crash_handler/Memory_crash.bin

cc kernel/Disk/Diskmanage.h -o kernel/Disk/Diskmanage.bin

cc kernel/Disk/Diskmanage_code.c -o kernel/Disk/Diskmanage_code.bin

cc kernel/IPC/IPC.c -o kernel/IPC/IPC.bin

cc kernel/Krnlcall/Disk_call.c -o kernel/Krnlcall/Disk_call.bin

cc kernel/Krnlcall/Interrupt_call.c -o kernel/Krnlcall/Interrupt_call.bin

cc kernel/Memory/Memcall.h -o kernel/Memory/Memcall.bin

cc kernel/Memory/Memcall_code.c -o kernel/Memory/Memcall_code.bin

cc kernel/Panic/kernel_panic.c -o kernel/Panic/kernel_panic.bin

cc kernel/Process_scheduler/Pid_manage.h -o kernel/Process_scheduler/Pid_manage.bin

cc kernel/Process_scheduler/Pid_manage_code.c -o kernel/Process_scheduler/Pid_manage_code.bin

cc kernel/KBJ.c -o kernel/KBJ.bin

nasm -f bin kernel/VGAcontrol.asm -o kernel/VGAcontrol.bin


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
