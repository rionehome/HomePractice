#! /usr/bin/env python3

with open("/etc/udev/rules.d/57-kobuki.rules", "w") as f:
    f.write('# On precise, for some reason, USER and GROUP are getting ignored.\n')
    f.write('# So setting mode = 0666 for now.\n')
    f.write('SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="kobuki*", MODE:="0666", GROUP:="dialout", SYMLINK+="kobuki"\n')
    f.write('# Bluetooth module (currently not supported and may have problems)\n')
    f.write('# SUBSYSTEM=="tty", ATTRS{address}=="00:00:00:41:48:22", MODE:="0666", GROUP:="dialout", SYMLINK+="kobuki"\n')

print("[*] Reboot your computer")
print(">>> reboot")
