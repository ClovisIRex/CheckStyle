#! /bin/bash

cd ~
curl https://github.com/kleinay/biuoop2020/wiki/data/checkstyle/checkstyle-5.7-all.jar -O
curl https://raw.githubusercontent.com/wiki/kleinay/biuoop2020/data/checkstyle/biuoop.xml -O

chmod +x ./checkstyle-5.7-all.jar
mkdir -p ~/tmp/checkstyle
mv ./checkstyle-5.7-all.jar ~/tmp/checkstyle/
mv ./biuoop.xml ~/tmp/checkstyle/


if [ $# -eq 0 ]
  then
    RC_FILE=~/.bashrc
  else
      RC_FILE=$1
fi


echo "alias checkStyle="java -jar ~/tmp/checkstyle/checkstyle-5.7-all.jar -c ~/tmp/checkstyle/biuoop.xml "" >> $RC_FILE
