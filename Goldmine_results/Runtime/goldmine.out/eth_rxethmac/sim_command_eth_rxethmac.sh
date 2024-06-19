#!/bin/bash

iverilog -g2001 -osimv -s eth_rxethmac_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_rxethmac/eth_rxethmac_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxethmac.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch