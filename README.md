raspiraw
========

Raspberry Pi CSI camera board JPEG+RAW photo to Adobe DNG converter


Prerequisites
=============

C compiler, Internet connection to download the required version of libtiff and a patch.

Build instructions
==================

Run ``make``, you will need a working Internet connection on the first run.


Usage
=====

* Take a picture on the RPi embedding RAW data: ``raspistill --raw -o out.jpg``
* Transfer the output file where you compiled ``raspiraw``
* Convert to Adobe DNG: ``./raspiraw out.jpg out.dng``


See also
========

* Raspberry Pi forum topic: http://www.raspberrypi.org/phpBB3/viewtopic.php?t=44918&p=356676
* dcraw homepage: http://www.cybercom.net/~dcoffin/dcraw/

