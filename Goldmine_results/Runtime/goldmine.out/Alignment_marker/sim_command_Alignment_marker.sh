#!/bin/bash

iverilog -g2001 -osimv -s Alignment_marker_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Alignment_marker/Alignment_marker_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/Xbar_modules.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch