#!/bin/bash

iverilog -g2001 -osimv -s MAC_tx_addr_add_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_tx_addr_add/MAC_tx_addr_add_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_addr_add.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac