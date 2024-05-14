#!/bin/bash

iverilog -g2001 -osimv -s TENBASET_RxD_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/TENBASET_RxD/TENBASET_RxD_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_cheap_ethernet_interface/TENBASET_RxD.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_cheap_ethernet_interface