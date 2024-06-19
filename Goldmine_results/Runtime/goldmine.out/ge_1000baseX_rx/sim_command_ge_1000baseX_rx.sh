#!/bin/bash

iverilog -g2001 -osimv -s ge_1000baseX_rx_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ge_1000baseX_rx/ge_1000baseX_rx_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi