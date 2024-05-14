#!/bin/bash

iverilog -g2001 -osimv -s Reg_int_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Reg_int/Reg_int_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/reg_int.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac