#!/bin/bash

iverilog -g2001 -osimv -s reg_int_sim_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/reg_int_sim/reg_int_sim_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/reg_int_sim.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac