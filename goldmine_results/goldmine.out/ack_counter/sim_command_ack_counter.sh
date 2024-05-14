#!/bin/bash

iverilog -g2001 -osimv -s ack_counter_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ack_counter/ack_counter_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/ack_counter.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac