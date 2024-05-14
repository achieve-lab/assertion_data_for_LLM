#!/bin/bash

iverilog -g2001 -osimv -s Broadcast_filter_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Broadcast_filter/Broadcast_filter_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Broadcast_filter.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac