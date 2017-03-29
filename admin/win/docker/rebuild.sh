#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $(basename $0) directory_relative_to_home build_type [uid]"
  exit
fi

useradd user -u ${3:-1000}
su - user << EOF
  cd /home/user/$1
  cd build-win32
  make -j4
  make package
  ctest .
EOF
