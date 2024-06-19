#!/bin/bash

iverilog -g2001 -osimv -s Phy_sim_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Phy_sim/Phy_sim_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac