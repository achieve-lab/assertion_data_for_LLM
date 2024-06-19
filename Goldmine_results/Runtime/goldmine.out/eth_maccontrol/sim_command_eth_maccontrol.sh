#!/bin/bash

iverilog -g2001 -osimv -s eth_maccontrol_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_maccontrol/eth_maccontrol_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_maccontrol.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch