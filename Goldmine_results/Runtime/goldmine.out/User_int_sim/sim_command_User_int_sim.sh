#!/bin/bash

iverilog -g2001 -osimv -s User_int_sim_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/User_int_sim/User_int_sim_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/User_int_sim.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac