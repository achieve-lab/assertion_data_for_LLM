#!/bin/bash

iverilog -g2001 -osimv -s Ramdon_gen_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Ramdon_gen/Ramdon_gen_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Ramdon_gen.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac