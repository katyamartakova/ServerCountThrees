ServerCountThrees : readInt32BitLE.c readInt32BitLE.h ServerCountThrees.c
	gcc -o ServerCountThrees readInt32BitLE.c ServerCountThrees.c
	
test : ServerCountThrees threesData.bin
	mkdir -p testdir
	cp ServerCountThrees testdir
	cp threesData.bin    testdir
	./testdir/ServerCountThrees

clean :
	rm -f ServerCountThrees
	rm -fr testdir
