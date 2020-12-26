rm redirect.txt
touch redirect.txt
stty 9600 -F /dev/ttyUSB0
chmod 777 /dev/ttyUSB0
tail -f redirect.txt > /dev/ttyUSB0 &
qemu-system-aarch64 -machine virt -cpu cortex-a53 -machine type=virt -smp 1 -m 256 -kernel image.elf --append console=/dev/ttyAMA0 -serial stdio | tee redirect.txt
