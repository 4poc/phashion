Phashion
===========

Phashion is a Ruby wrapper around the pHash library, "perceptual hash", which detects duplicate
and near duplicate multimedia files (images, audio, video).  The wrapper currently only supports images.

[See an overview of Phashion on my blog](http://www.mikeperham.com/2010/05/21/detecting-duplicate-images-with-phashion/).

Installation
-------------

Download and install CImg: http://cimg.sourceforge.net
(download zip and copy CImg.h to /usr/include for instance)
Download, compile and install pHash: www.phash.org/download/
    ./configure --prefix=/usr --disable-audio-hash --disable-video-hash
    make
    sudo make install
Build&Install Gem:
    gem build phashion.gemspec
    gem install phashion-1.0.4.gem

Usage
---------

    require 'phashion'
    img1 = Phashion::Image.new(filename1)
    img2 = Phashion::Image.new(filename2)
    img1.duplicate?(img2)
    --> true
    img1.fingerprint
    --> 1234567890

Author
==========

Mike Perham, http://mikeperham.com, http://twitter.com/mperham, mperham AT gmail.com

Copyright
----------

Copyright (c) 2010 Mike Perham. See LICENSE for details.
