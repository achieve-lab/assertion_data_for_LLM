#!/bin/bash

iverilog -g2001 -osimv -s RegCPUData_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/RegCPUData/RegCPUData_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RegCPUData.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac