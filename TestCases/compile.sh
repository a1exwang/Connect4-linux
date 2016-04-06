#!/bin/sh
if [ $# -eq 2 ]; then
  BASE_DIR=$1
  g++ -g -c -fPIC -o Strategy.o $BASE_DIR/Strategy.cpp
  g++ -g -c -fPIC -o Judge.o $BASE_DIR/Judge.cpp
  g++ -shared -o $2 Strategy.o Judge.o
  rm Strategy.o Judge.o
  echo $2 done
else
  echo "./compile.sh STRATEGY_DIR OUTPUT_FILE"
fi


