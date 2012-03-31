require 'mkmf'

HERE = File.expand_path(File.dirname(__FILE__))
$CFLAGS = " -x c++ #{ENV["CFLAGS"]}"
$includes = " -I/usr/include"
$libraries = " -L/usr/lib -lruby -lpHash"
$CFLAGS = "#{$includes} #{$libraries} #{$CFLAGS}"
$LDFLAGS = "#{$libraries} #{$LDFLAGS}"


create_makefile 'phashion_ext'
