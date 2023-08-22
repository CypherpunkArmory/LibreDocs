#! /bin/bash

if [ -d /sdcard ]; then
  if [ ! -d ~/sdcard ]; then
    ln -s /sdcard ~/sdcard
  fi
fi

if [ -d /Documents ]; then
  if [ ! -d ~/Documents ]; then
    ln -s /Documents ~/Documents
  fi
fi

if [ -d /Downloads ]; then
  if [ ! -d ~/Downloads ]; then
    ln -s /Downloads ~/Downloads
  fi
fi

if [ -d /Music ]; then
  if [ ! -d ~/Music ]; then
    ln -s /Music ~/Music
  fi
fi

if [ -d /Pictures ]; then
  if [ ! -d ~/Pictures ]; then
    ln -s /Pictures ~/Pictures
  fi
fi

if [ -d /Videos ]; then
  if [ ! -d ~/Videos ]; then
    ln -s /Videos ~/Videos
  fi
fi

if [ -d /DCIM ]; then
  if [ ! -d ~/DCIM ]; then
    ln -s /DCIM ~/DCIM
  fi
fi

SCRIPT_PATH=$(realpath ${BASH_SOURCE})
sudo rm -f $SCRIPT_PATH

if [ ! -f /usr/bin/libreoffice ]; then
   sudo apt-get update
   sudo DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install libreoffice
fi

if [[ $? != 0 ]]; then
   read -rsp $'An error occurred installing packages, please try again and if it persists provide this log to the developer.\nPress any key to close...\n' -n1 key
   exit
fi

libreoffice

exit
