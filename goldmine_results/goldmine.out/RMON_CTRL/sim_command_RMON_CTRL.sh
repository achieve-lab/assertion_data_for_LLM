#!/bin/bash

iverilog -g2001 -osimv -s RMON_CTRL_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/RMON_CTRL/RMON_CTRL_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac