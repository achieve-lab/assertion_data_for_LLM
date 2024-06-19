#!/bin/bash

iverilog -g2001 -osimv -s can_register_asyn_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_register_asyn/can_register_asyn_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_register_asyn.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller