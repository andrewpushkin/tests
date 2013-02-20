# OE after 30July2010
TOOLDIR = ${OETMP}/sysroots/`uname -m`-linux/usr/armv7a/bin
STAGEDIR = ${OETMP}/sysroots/armv7a-angstrom-linux-gnueabi/usr

CC = ${CROSS_COMPILE}gcc
CFLAGS = -Wall
TARGET = helloworld
OBJS = helloworld.o
INCDIR = .
LIBDIR = .

${TARGET} : $(OBJS)
	${CC} ${CFLAGS} ${OBJS} -L ${LIBDIR} -o ${TARGET}

helloworld.o: helloworld.c
	${CC} ${CFLAGS} -I ${INCDIR} -c helloworld.c

clean:
	rm -f ${TARGET} ${OBJS} *~





