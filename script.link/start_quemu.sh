#!/bin/bash

configfile=/etc/vfio_1.cfg

vfiobind() {
    dev="$1"
        vendor=$(cat /sys/bus/pci/devices/$dev/vendor)
        device=$(cat /sys/bus/pci/devices/$dev/device)
        if [ -e /sys/bus/pci/devices/$dev/driver ]; then
                echo $dev > /sys/bus/pci/devices/$dev/driver/unbind
        fi
        echo $vendor $device > /sys/bus/pci/drivers/vfio-pci/new_id
   
}

modprobe vfio-pci

cat $configfile | while read line;do
    echo $line | grep ^# >/dev/null 2>&1 && continue
        vfiobind $line
done

qemu-system-x86_64 -display none -enable-kvm -M q35 -m 16384 -cpu host,kvm=off \
-smp 4,sockets=1,cores=4,threads=1 \
-bios /usr/share/qemu/bios.bin -vga none \
-device ioh3420,bus=pcie.0,addr=1c.0,multifunction=on,port=1,chassis=1,id=root.1 \
-device vfio-pci,host=01:00.0,bus=root.1,addr=00.0,multifunction=on,x-vga=on \
-device vfio-pci,host=01:00.1,bus=root.1,addr=00.1 \
-device ahci,id=ahci0 \
-drive if=none,file=/dev/sdb,id=drive-sata0-0-0,format=raw \
-device ide-drive,bus=ahci0.0,drive=drive-sata0-0-0,id=sata0-0-0 \
-device virtio-net-pci,netdev=net0,mac=AA:BB:CC:DD:EE:FF -netdev tap,id=net0 \
-drive file=/tmp/windows.iso,id=isocd -device ide-cd,bus=ide.1,drive=isocd \
-usb -usbdevice host:413c:2105 -usbdevice host:0461:4d15 \
-boot menu=on

exit 0
