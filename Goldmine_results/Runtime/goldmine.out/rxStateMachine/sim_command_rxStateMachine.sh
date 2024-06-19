#!/bin/bash

iverilog -g2001 -osimv -s rxStateMachine_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxStateMachine/rxStateMachine_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxStateMachine.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac