#!/bin/bash

iverilog -g2001 -osimv -s PSGMasterVolumeControl_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGMasterVolumeControl/PSGMasterVolumeControl_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGMasterVolumeControl.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu