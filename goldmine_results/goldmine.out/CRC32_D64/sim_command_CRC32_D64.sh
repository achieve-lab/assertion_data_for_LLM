#!/bin/bash

iverilog -g2001 -osimv -s CRC32_D64_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/CRC32_D64/CRC32_D64_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/CRC32_D64.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac