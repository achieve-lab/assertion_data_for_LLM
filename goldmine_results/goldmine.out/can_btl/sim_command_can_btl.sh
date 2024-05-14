#!/bin/bash

iverilog -g2001 -osimv -s can_btl_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_btl/can_btl_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_btl.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller