#!/bin/bash

iverilog -g2001 -osimv -s eth_outputcontrol_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_outputcontrol/eth_outputcontrol_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac