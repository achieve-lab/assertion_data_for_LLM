#!/bin/bash

iverilog -g2001 -osimv -s can_crc_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_crc/can_crc_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_crc.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller