#!/bin/bash

iverilog -g2001 -osimv -s mdio_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mdio/mdio_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/mdio.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac