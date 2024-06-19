#!/bin/bash

iverilog -g2001 -osimv -s can_fifo_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_fifo/can_fifo_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller/can_fifo.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_can_protocol_controller