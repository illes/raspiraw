
all: raspi_dng

tiff-3.8.2.tar.gz:
	wget -nc 'http://dl.maptools.org/dl/libtiff/tiff-3.8.2.tar.gz'

tiff-3.8.2: tiff-3.8.2.tar.gz libtiff.patch
	tar -zxvf "$<"
	cat "libtiff.patch" | patch -p0 -f

libtiff.patch:
	wget -nc 'http://www.cybercom.net/~dcoffin/dcraw/libtiff.patch'

local/lib/libtiff.a: tiff-3.8.2
	cd $< ; ./configure --prefix=$(PWD)/local
	cd $< ; make -j4
	cd $< ; make install

clean:
	rm -rf local tiff-3.8.2 *.o

raspi_dng.o: local/lib/libtiff.a raspi_dng.c
	$(CC) -c raspi_dng.c -I./local/include -o $@

raspi_dng: raspi_dng.o local/lib/libtiff.a
	$(CC) raspi_dng.o local/lib/libtiff.a -ljpeg -lm -lz -o $@
