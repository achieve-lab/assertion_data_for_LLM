#!/bin/bash

iverilog -g2001 -osimv -s eth_txcounters_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_txcounters/eth_txcounters_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch