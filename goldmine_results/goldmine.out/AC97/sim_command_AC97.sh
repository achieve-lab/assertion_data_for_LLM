#!/bin/bash

iverilog -g2001 -osimv -s AC97_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/AC97/AC97_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/AC97Controller.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu