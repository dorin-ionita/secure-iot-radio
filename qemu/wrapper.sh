#redirect.txt
rm redirect.txt
touch redirect.txt
stty 9600 -F /dev/ttyUSB2
chmod 777 /dev/ttyUSB2
tail -f redirect.txt > /dev/ttyUSB2 &
qemu-system-aarch64 -machine virt -cpu cortex-a53 -machine type=virt -smp 1 -m 256 -kernel image.elf --append console=/dev/ttyAMA0 -serial stdio | tee redirect.txt
