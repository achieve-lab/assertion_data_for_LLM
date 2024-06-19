#!/bin/bash

iverilog -g2001 -osimv -s can_bsp_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_bsp/can_bsp_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_bsp.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller