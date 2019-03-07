# Makefile to warp around debhelper

PREFIX = /usr/local

all:
	premake4 gmake
	(cd make/linux; make config=release -j$$(nproc))

clean:
	premake4 clean

install:
	mkdir -p $(PREFIX)/lib/$(DEB_HOST_MULTIARCH)
	mkdir -p $(PREFIX)/include
	cp lib/linux/* $(PREFIX)/lib/$(DEB_HOST_MULTIARCH)
	cp src/SOIL2/SOIL2.h $(PREFIX)/include

