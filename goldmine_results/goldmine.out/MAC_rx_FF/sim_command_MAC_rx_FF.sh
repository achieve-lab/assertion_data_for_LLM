#!/bin/bash

iverilog -g2001 -osimv -s MAC_rx_FF_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_rx_FF/MAC_rx_FF_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_rx_FF.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac