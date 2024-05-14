#!/bin/bash

iverilog -g2001 -osimv -s can_acf_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_acf/can_acf_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_acf.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller