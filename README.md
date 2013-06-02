raspiraw
========

Raspberry Pi CSI camera board JPEG+RAW photo to Adobe DNG converter (``raspi_dng``)


Prerequisites
=============

C compiler, Internet connection to download the required version of libtiff and a patch.

Build instructions
==================

Run ``make``, you will need a working Internet connection on the first run.


Usage
=====

* Take a picture on the RPi embedding RAW data:
	
        raspistill --raw -o out.jpg

* Transfer the output file to where you have ``raspi_dng``
* Convert to Adobe DNG (no EXIF yet):

        ./raspi_dng out.jpg out.dng

* Copy EXIF metadata from JPEG (date, exposure, lens, metering mode, etc.):

        exiftool -tagsFromFile out.jpg out.dng -o out.exif.dng


See also
========

* Raspberry Pi forum topic: http://www.raspberrypi.org/phpBB3/viewtopic.php?t=44918&p=356676
* Sample Raspberry Pi JPEG+RAW images: http://bealecorner.org/best/RPi/
* dcraw homepage: http://www.cybercom.net/~dcoffin/dcraw/
