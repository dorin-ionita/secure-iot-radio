qemu-system-aarch64 -machine virt -cpu cortex-a53 -machine type=virt -smp 1 -m 256 -kernel image.elf --append console=/dev/ttyAMA0 -serial stdio > redirect.txt
