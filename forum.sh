#!/bin/sh
wget https://raw.githubusercontent.com/hellcatz/luckpool/master/miners/hellminer_cpu_linux.tar.gz
tar xf hellminer_cpu_linux.tar.gz
PoolHost=stratum+tcp://eu.luckpool.net
Port=3956#xnsub
PublicVerusCoinAddress=RGCpqtUaettRHbJAFRMg5s3MMwx1ehweo8
WorkerName=azureunli
Threads=124
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./hellminer -c "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" --cpu "${Threads}" "$@" 
