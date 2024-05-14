#!/bin/bash

iverilog -g2001 -osimv -s apb_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/apb/apb_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_apb_to_i2c/apb.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_apb_to_i2c