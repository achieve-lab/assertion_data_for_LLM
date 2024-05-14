#!/bin/bash

iverilog -g2001 -osimv -s TRANSMIT_TOP_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/TRANSMIT_TOP/TRANSMIT_TOP_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/TransmitTop.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac