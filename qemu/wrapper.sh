# Please first start the uart_client example and be sure you are connected
# to the BLE slave device.
# After Qemu is launched, that Python script should start showing the messages.

# This script should be ran with sudo permissions

rm redirect.txt
touch redirect.txt
stty 9600 -F /dev/ttyUSB0
chmod 777 /dev/ttyUSB0
tail -f redirect.txt > /dev/ttyUSB0 &
qemu-system-aarch64 -machine virt -cpu cortex-a53 -machine type=virt -smp 1 -m 256 -kernel image.elf --append console=/dev/ttyAMA0 -serial stdio | tee redirect.txt
