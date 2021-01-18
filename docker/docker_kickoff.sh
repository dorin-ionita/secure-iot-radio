set -ex

src_path="/home/dorin/ble/qemu"
dst_path="/home/qemu"
hash=$(sudo docker run --mount type=bind,source="/home/dorin/ble/qemu",target=$dst_path -dit -p 5000:5000 myimage)
sudo docker update --restart=always $hash
