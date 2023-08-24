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

libreoffice

exit
