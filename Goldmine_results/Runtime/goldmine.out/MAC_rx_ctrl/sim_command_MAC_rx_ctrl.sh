#!/bin/bash

iverilog -g2001 -osimv -s MAC_rx_ctrl_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_rx_ctrl/MAC_rx_ctrl_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_rx_ctrl.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac