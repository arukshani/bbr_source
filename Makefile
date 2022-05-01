obj-m += tcp_bbr_ruk.o
# obj-m += tcp_output.o



all:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
