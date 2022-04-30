https://blog.2cn.in/index.php/archives/18.html

<!-- sudo modprobe tcp_bbr -->

make all
sudo cp -rf ./tcp_bbr_ruk.ko /lib/modules/$(uname -r)/kernel/net/ipv4

sudo insmod /opt/bbr_source/tcp_bbr_ruk.ko
sudo insmod /lib/modules/$(uname -r)/kernel/net/ipv4/tcp_bbr_ruk.ko


2018-10-17	tcp_bbr: centralize code to set gains


rmmod tcp_bbr_ruk
rmmod tcp_bbr_ruk.ko
insmod tcp_bbr_ruk.ko
lsmod | grep bbr
sudo modprobe -r tcp_bbr 
sudo insmod tcp_bbr_ruk.ko

sudo modprobe /lib/modules/5.4.0-100-generic/kernel/net/ipv4/tcp_bbr_ruk.ko