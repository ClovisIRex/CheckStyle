#! /bin/bash

cd ~
curl https://raw.githubusercontent.com/ClovisIRex/CheckStyle/master/checkstyle.sh -O
chmod +x ./checkstyle.sh
mkdir -p ~/tmp/checkstyle
mv ./checkstyle.sh ~/tmp/checkstyle/



if [ $# -eq 0 ]
  then
    RC_FILE=~/.bashrc
  else
      RC_FILE=$1
fi


echo "alias checkStyle="~/tmp/checkstyle/checkstyle.sh"" >> $RC_FILE
