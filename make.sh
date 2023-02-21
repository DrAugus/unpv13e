#!/bin/bash

echo " " && echo ">>>>>configure begin" && echo " "
./configure    # try to figure out all implementation differences
echo " " && echo ">>>>>configure done" && echo " "

echo " " && echo ">>>>>build basic lib" && echo " "
cd lib         # build the basic library that all programs need
make           # use "gmake" everywhere on BSD/OS systems
echo " " && echo ">>>>>basic lib done" && echo " "

echo " " && echo ">>>>>continue build basic lib" && echo " "
cd ../libfree  # continue building the basic library
make
echo " " && echo ">>>>>basic lib done" && echo " "

# cd ../libroute # only if your system supports 4.4BSD style routing sockets
# make           # only if your system supports 4.4BSD style routing sockets

# cd ../libxti   # only if your system supports XTI
# make           # only if your system supports XTI

echo " " && echo ">>>>>build and test a basic client program" && echo " "
cd ../intro    # build and test a basic client program
make clean && make
echo " " && echo ">>>>>basic client program done" && echo " "
