https://blog.2cn.in/index.php/archives/18.html

<!-- sudo modprobe tcp_bbr -->

make all
sudo cp -rf ./tcp_bbr_ruk.ko /lib/modules/$(uname -r)/kernel/net/ipv4

lsmod | grep bbr
sudo modprobe -r tcp_bbr 
sudo modprobe -r tcp_bbr_ruk 
sudo insmod tcp_bbr_ruk.ko

2018-10-17	tcp_bbr: centralize code to set gains