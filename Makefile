obj-m += sun4i-dai.o

all:
	make -C /lib/modules/4.6.0-2-ARCH/build M=$(PWD) modules

clean:
	make -C /lib/modules/4.6.0-2-ARCH/build M=$(PWD) clean

install:
	cp sun4i-dai.ko /lib/modules/4.6.0-2-ARCH/kernel/sound/soc/sunxi/
	depmod
