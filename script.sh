#!/bin/bash

bin/primero < ejemplos/$1.cc > tmp/$11.cc
bin/segundo < tmp/$11.cc > tmp/$12.cc
bin/tercero < tmp/$12.cc > tmp/$13.cc
bin/cuarto  < tmp/$13.cc > resultado/$1.cc