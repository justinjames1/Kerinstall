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
cc /root/kernel/Diskmanage.h -o Diskmanage.bin
cat /root/kernel/Diskmanage.bin
cc /root/kernel/Diskmanage_code.c -o Diskmanage_code.bin
cat /root/kernel/Diskmanage_code.bin
cc /root/kernel/Interrupt.h -o Interrupt.bin
cat /root/kernel/Interrupt.bin
cc /root/kernel/Interrupt_code.c -o Interrupt_code.bin
cat /root/kernel/Interrupt_code.bin
cc /root/kernel/Memcall.h -o Memcall.bin
cat /root/kernel/Memcall.bin
cc /root/kernel/Memcall_code.c -o Memcall_code.bin
cat /root/kernel/Memcall_code.bin
cc /root/kernel/Panic.c -o Panic.bin
cat /root/kernel/Panic.bin
cc /root/kernel/Process_scheduler.c -o Process_scheduler.bin
cat /root/kernel/Process_scheduler.bin
cc /root/kernel/Krnlcall.c -o Krnlcall.bin
cat /root/kernel/Krnlcall.bin
nasm -f bin /root/kernel/VGAcontrol.asm -o VGAcontrol.bin
cat /root/kernel/VGAcontrol.bin
cc /root/Commandprompt.c -o Commandprompt.bin

mv kernel/* .

echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....

rm *.c
rm *.h
rm *.asm


mv Diskmanage.bin /root/kernel
mv Diskmanage_code.bin /root/kernel
mv Intterupt.bin /root/kernel
mv Interrupt_code.bin /root/kernel
mv Memcall.bin /root/kernel
mv Memcall_code.bin /root/kernel
mv Panic.bin /root/kernel
mv Process_scheduler.bin /root/kernel
mv Krnlcall.bin /root/kernel


echo =====================================
echo sucessfully completed installation.
echo =====================================
