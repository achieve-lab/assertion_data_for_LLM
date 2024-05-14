#!/bin/bash

iverilog -g2001 -osimv -s decoder_8b10b_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/decoder_8b10b/decoder_8b10b_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi