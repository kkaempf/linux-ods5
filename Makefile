ifneq ($(KERNELRELEASE),)

obj-m  := ods5.o
ods5-y := dir.o file.o home.o indexf.o inode.o ioctl.o sizchk.o super.o

else

KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD

endif

clean:
	rm -f *.o
	rm -f *.ko
	rm -f .*.cmd
	rm -f Module.symvers
	rm -f modules.order
	rm -f ods5.ko
	rm -f ods5.mod
	rm -f ods5.mod.c
