obj-m += tcp_bbr_ruk.o
# make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
# obj-m:=tcp_bbr.o


all:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
