echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo installing kernaline os files please wait...
git clone https://github.com/justindude057-collab/KERALINE-OS.git
apk add unzip
apk add nasm
apk add gcc
echo preparing files for compileing.....
mv KERALINE-OS/* .

echo comepleted preping files for compilation.

nasm -f bin BOOTSECTION.asm -o BOOTSECTION.bin
cat BOOTSECTION.bin
cc /root/kernel/Disk/Diskmanage.h -o Diskmanage.bin
#cat /kernel/Disk/Diskmanage.bin
cc /root/kernel/Disk/Diskmanage_code.c -o Diskmanage_code.bin
#cat /kernel/Disk/Diskmanage_code.bin
cc /root/kernel/CPU/Interrupt.h -o Interrupt.bin
#cat /kernel/Interrupt.bin
cc /root/kernel/CPU/Interrupt_code.c -o Interrupt_code.bin
#cat /kernel/Interrupt_code.bin
cc /root/kernel/Memory/Memcall.h -o Memcall.bin
#cat /kernel/Memcall.bin
cc /root/kernel/Memory/Memcall_code.c -o Memcall_code.bin
#cat /kernel/Memcall_code.bin
cc /root/kernel/Kernel_panic.c -o Kernel_panic.bin
#cat /kernel/Panic.bin
nasm -f bin /root/kernel/VGAcontrol.asm -o VGAcontrol.bin
#cat /kernel/VGAcontrol.bin
cc /root/Commandprompt.c -o Commandprompt.bin
#cat root/Commandprompt.bin
echo [if it says error with cat thats fine.]
echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....

rm *.c
rm *.h
rm *.asm


mv Diskmanage.bin /root/kernel
mv Diskmanage_code.bin /root/kernel
mv Interrupt.bin /root/kernel
mv Interrupt_code.bin /root/kernel
mv Memcall.bin /root/kernel
mv Memcall_code.bin /root/kernel
mv Panic.bin /root/kernel
mv Process_scheduler.bin /root/kernel
mv Krnlcall.bin /root/kernel
mv VGAcontrol.bin /root/kernel

echo =====================================
echo sucessfully completed installation.
echo =====================================
