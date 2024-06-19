#!/bin/bash

iverilog -g2001 -osimv -s eth_rxaddrcheck_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_rxaddrcheck/eth_rxaddrcheck_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch