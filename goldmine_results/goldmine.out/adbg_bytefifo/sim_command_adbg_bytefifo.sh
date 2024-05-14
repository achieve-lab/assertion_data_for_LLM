#!/bin/bash

iverilog -g2001 -osimv -s adbg_bytefifo_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/adbg_bytefifo/adbg_bytefifo_bench.v /data/vpulav2/Work/GoldMine/verilog/testing-verification_socgen/adbg_bytefifo.v  -I/data/vpulav2/Work/GoldMine/verilog/testing-verification_socgen