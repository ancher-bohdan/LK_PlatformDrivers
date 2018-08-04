ifneq ($(KERNELRELEASE),)
obj-m += platform_test_dts.o
else
KDIR ?= ~/repos/linux

default:
	$(MAKE) -C $(KDIR) M=$$PWD
clean:
	$(MAKE) -C $(KDIR) M+$$PWD clean
endif
