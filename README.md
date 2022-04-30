https://blog.2cn.in/index.php/archives/18.html
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/log/net/ipv4/tcp_bbr.c 

<!-- sudo modprobe tcp_bbr -->

```
make all
sudo cp -rf ./tcp_bbr_ruk.ko /lib/modules/$(uname -r)/kernel/net/ipv4
```

```
lsmod | grep bbr
<!-- sudo modprobe -r tcp_bbr 
sudo modprobe -r tcp_bbr_ruk -->
sudo rmmod tcp_bbr_ruk
sudo insmod tcp_bbr_ruk.ko
```

```
Works on 5.4 
2018-10-17-1	tcp_bbr: centralize code to set gains
2018-10-17-2    tcp_bbr: adjust TCP BBR for departure time pacing
2018-10-15-1	tcp_bbr: fix typo in bbr_pacing_margin_percent
2018-10-15-2	net: extend sk_pacing_rate to unsigned long
2018-09-21	    tcp: switch tcp and sch_fq to new earliest departure time model
2018-08-22-1	tcp_bbr: apply PROBE_RTT cwnd cap even if acked==0
2018-03-01	    tcp_bbr: better deal with suboptimal GSO (II)

Works only on 4.16 
2018-02-01	tcp_bbr: fix pacing_gain to always be unity when using lt_bw
2018-01-19	tcp: avoid min RTT bloat by skipping RTT from delayed-ACK in BBR

Works on 4.15
2017-12-08	tcp_bbr: reset long-term bandwidth sampling on loss recovery undo
```

```
eval `ssh-agent -s`
ssh-add /users/rukshani/.ssh/rukshani_cloudlab.pem
```