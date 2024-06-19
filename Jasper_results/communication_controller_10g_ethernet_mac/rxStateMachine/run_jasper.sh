#!/bin/bash

python3 run_jasper.py FPV_rxStateMachine.tcl property_gpt_3.5.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_rxStateMachine.tcl -proj rxStateMachine_gpt_3.5_1shot
python3 run_jasper.py FPV_rxStateMachine.tcl property_gpt_3.5_5shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_rxStateMachine.tcl -proj rxStateMachine_gpt_3.5_5shot

python3 run_jasper.py FPV_rxStateMachine.tcl property_gpt_4o_1shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_rxStateMachine.tcl -proj rxStateMachine_gpt_4o_1shot
python3 run_jasper.py FPV_rxStateMachine.tcl property_gpt_4o_5shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_rxStateMachine.tcl -proj rxStateMachine_gpt_4o_5shot