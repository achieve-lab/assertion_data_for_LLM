#!/bin/bash

iverilog -g2001 -osimv -s TENBASET_TxD_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/TENBASET_TxD/TENBASET_TxD_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_cheap_ethernet_interface/TENBASET_TxD.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_cheap_ethernet_interface