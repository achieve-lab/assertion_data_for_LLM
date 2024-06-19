#!/bin/bash

iverilog -g2001 -osimv -s flow_ctrl_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/flow_ctrl/flow_ctrl_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac