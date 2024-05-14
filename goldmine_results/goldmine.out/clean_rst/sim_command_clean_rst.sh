#!/bin/bash

iverilog -g2001 -osimv -s clean_rst_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/clean_rst/clean_rst_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi