# Troubleshooting Documentation

## Vitis could not launch after installation
https://adaptivesupport.amd.com/s/question/0D54U000092qvr0SAA/vitis-unified-ide-not-launching-in-ubuntu-2204?language=en_US

Solution:
```bash
cd <xilinx_install_dir>
cd Vitis/<vitis_version>/lib/lnx64.o/Ubuntu/

# Make backup copies of your current libraries.
mv libstdc++.so libstdc++.so.bkup
mv libstdc++.so.6 libstdc++.so.6.bkup

# Soft-link system libraries.
ln -s /lib/x86_64-linux-gnu/libstdc++.so.6 libstdc++.so.6
ln -s /lib/x86_64-linux-gnu/libstdc++.so.6 libstdc++.so

```

## Encountering ERROR: PermissionError: [Errno 1] Operation not permitted
http://cnblogs.com/OOOC/p/18665791
```bash
sudo apparmor_parser -R /etc/apparmor.d/unprivileged_userns
```