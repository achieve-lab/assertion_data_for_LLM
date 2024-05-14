#!/bin/bash

iverilog -g2001 -osimv -s module_i2c_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/module_i2c/module_i2c_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_apb_to_i2c/module_i2c.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_apb_to_i2c