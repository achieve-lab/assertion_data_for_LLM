#!/bin/bash

iverilog -g2001 -osimv -s encoder_8b10b_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/encoder_8b10b/encoder_8b10b_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/encoder_8b10b.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi