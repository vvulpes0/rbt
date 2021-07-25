OBJS=find.o delete.o insert.o rotate_left.o rotate_right.o
LIB=rbt

all : lib${LIB}.a

lib${LIB}.a : ${OBJS}
	libtool -static ${LDFLAGS} -o ${.TARGET} ${.ALLSRC:M*.o}
