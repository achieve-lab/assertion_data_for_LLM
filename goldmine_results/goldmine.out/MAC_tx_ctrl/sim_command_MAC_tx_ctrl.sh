#!/bin/bash

iverilog -g2001 -osimv -s MAC_tx_ctrl_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_tx_ctrl/MAC_tx_ctrl_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac