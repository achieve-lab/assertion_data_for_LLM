#!/bin/bash

iverilog -g2001 -osimv -s rxLinkFaultState_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxLinkFaultState/rxLinkFaultState_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxLinkFaultState.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac