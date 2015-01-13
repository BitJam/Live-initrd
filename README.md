Live-initrd
===========
Contents of the live antiX initrd.gz file

Notes:
------
The scripts init, bin/umount-live, bin/tsplash have fixed
English strings in this repo.  Use the Translastions tool
chain to convert these strings to variables for on the fly
tranlation.

To create an initrd.gz file:

    find . | cpio -o -H newc | gzip -9 > ../initrd.gz

To unpack an initrd.gz file:

    mkdir initrd
    cd initrd
    gunzip -c ../initrd.gz | cpio -idum
