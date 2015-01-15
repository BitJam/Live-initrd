Live-initrd
===========
Contents of the live antiX initrd.gz file

Notes:
------
The following scripts have English strings in this repo.  Use the
Translations tool chain to convert the strings in these scripts
to variables for on the fly translation.

    ejectcd
    init
    live-L10n
    live-disable-services
    live-init
    live-init-utils.sh
    live-restore-services
    live-shutdown
    persist-password
    tsplash

To create an initrd.gz file:

    IGNORE="/\..*\.swp$$|README.md|^./\.git|Private"
    find . | grep -v "$IGNORE" | cpio -o -H newc | gzip -9 > ../initrd.gz

To unpack an initrd.gz file:

    mkdir initrd
    cd initrd
    gunzip -c ../initrd.gz | cpio -idum
