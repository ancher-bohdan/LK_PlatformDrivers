ifneq ($(KERNELRELEASE),)
obj-m += platform_test.o
else
KDIR ?= ~/repos/linux

default:
	$(MAKE) -C $(KDIR) M=$$PWD
clean:
	$(MAKE) -C $(KDIR) M+$$PWD clean
endif
