#!/bin/bash

iverilog -g2001 -osimv -s can_registers_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_registers/can_registers_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_registers.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller