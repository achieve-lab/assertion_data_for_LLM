#!/bin/bash

iverilog -g2001 -osimv -s auto_baud_with_tracking_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/auto_baud_with_tracking/auto_baud_with_tracking_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_automatic_baud_rate_generator/auto_baud_with_tracking.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_automatic_baud_rate_generator