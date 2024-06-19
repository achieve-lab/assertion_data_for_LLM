#  AssertionBench

## Description

Assertions have been the de facto collateral for simulation-based and    formal verification of hardware designs for over a decade. The    quality of hardware verification,i.e., detection and diagnosis of    corner-case design bugs, is critically dependent on the quality of    the assertions. There has been a considerable amount of research    leveraging a blend of data-driven statistical analysis and static    analysis to generate high-quality assertions from hardware design    source code and design execution trace data. Despite such concerted    effort, all prior research struggles to scale to industrial-scale    large designs, generates too many low-quality assertions, often fails    to capture subtle and non-trivial design functionality, and does not    produce any easy-to-comprehend explanations of the generated    assertions to understand assertions’ suitability to different    downstream validation tasks. Recently, with the advent of    Large-Language Models (LLMs), there has been a widespread effort to    model assertion generation as a sequence-to-sequence translation    (S2St) and leverage prompt engineering to generate assertions.    However, there is little effort to quantitatively establish the    effectiveness and suitability of various LLMs for assertion    generation. In this paper, we present AssertionBench, a novel    benchmark to evaluate LLMs’ effectiveness for assertion generation    quantitatively. AssertionBench contains 100 curated Verilog hardware    designs from OpenCores and formally verified assertions for each    design generated from G OLD M INE and HARM. We use AssertionBench to    compare state-of-the-art LLMs, e.g., GPT-3.5, GPT-4o, CodeLLaMa 2,    and LLaMa3-70B, to assess their effectiveness in inferring    functionally correct assertions for hardware designs. Our experiments    comprehensively demonstrate how LLMs perform relative to each other,    the benefits of using more in-context exemplars in generating a    higher fraction of functionally correct assertions, and the    significant room for improvement for LLM-based assertion generators.

Our evaluation framework is as follows.
<img class="center-block" src="https://github.com/achieve-lab/assertion_data_for_LLM/blob/main/AssertionBench_Eval_page.jpg"></img>

## Requirements
To replicate the environment for GPT -3.5/GPT-4 and run 1-shot and 5-shot learning, you can use requirements_gpt.txt.

    pip install -r requirements_gpt.txt

To replicate the environment for LLaMA3-70B and CodeLLaMa2-70B and run 1-shot and 5-shot learning, you can use requirements_llama.txt.

    pip install -r requirements_llama.txt
    
## Softwares Used

### IVerilog
[IVerilog](https://github.com/steveicarus/iverilog) is the compiler used to complie and run verilog HDL designs, as described in the IEEE-1364 standard. 
 
### GOLDMINE
[GoldMine](https://bitbucket.org/debjitp/goldminer/src/master/) is one of the assertion miner tools used to mine the assertions from the verilog HDL design. Goldmine is written in both Python2 and Python3. We have utilised this software in Python2 version. The configuration file is updated with the iverilog executable path. To run goldmine, the command is

    python2 ../src/goldmine.py -m <module_name> -u ../ -c <clock>:1 -r <reset>:1 -VS -F <path_to_vfile>

The command for arbiter2 is

    python2 ../src/goldmine.py -m arb2 -u ../ -c clk:1 -r rst:1 -VS -F ../vfiles/vfile_arb2
    
> **Note**: vfile_arb2 contains the path of the verilog HDL design file. Here it is "../verilog/arb2/arb2.v".

>**usage**: goldmine.py [-h] [-a] -m TOP -c CLOCK -r RESET [-p] [-e ENGINE] -u                   CONFIG_LOC [-v VCD] [-t TARGETV] [-T] [-I INCLUDE] [-V]  [-S] [-M MAN_ASSERTION_FILE] [-f FILE_LOC | -F LFILE]     
**arguments**:
 -h, --help :  Gives list of arguments and exits. <br> -a, --aggregate  :  Aggregate rankings for assertion importance, complexity, coverage and complexity (BETA phase) <br>  -m TOP, --module TOP :  Top module of the design (Mandatory arguments) <br> -c CLOCK, --clock CLOCK  : Clock signal <br> -r RESET, --reset RESET : Reset signal <br> -p, --parse  :  Parse the verilog file(s) and exit <br> -e ENGINE, --engine ENGINE  : Assertion mining engine (Default engine is PRISM) <br> -u CONFIG_LOC, --configuration_file_loc CONFIG_LOC  :  GoldMine configuration file location (Mandatory arguments) <br> -v VCD, --vcd VCD : VCD File(s) <br>  -t TARGETV, --targets TARGETV  :  Target variables seperated by comma for assertions mining <br> -I INCLUDE, --include INCLUDE  :  Include Path for Verilog `include files <br>  -V, --verification  :  Specify to skip formal verification <br> -S, --static_dump   :  Specify to dump static analysis results <br>  -N, --inter_modular :  Specify to mine inter modular assertions  (significantly slow) <br> -M MAN_ASSERTION_FILE, --manual_assertion MAN_ASSERTION_FILE  :  File containing user specified assertions <br> -f FILE_LOC, --files FILE_LOC  : Location containing source Verilog files <br> -F LFILE, --file_list LFILE  :  A file containing name of verilog files with absolute path, one file in every line.

You can find more about [GoldMine](https://ieeexplore.ieee.org/document/5457129) in this [website](https://sites.google.com/view/goldmine-illinois/publications?authuser=0) containing the list of publications.

### HARM

[HARM](https://github.com/SamueleGerminiani/harm/tree/main) (Hint-based AsseRtion Miner) is one of the tools used to mine assertions from the .vcd file generated by the compiler (IVerilog) after compiling the verilog HDL design. There are two example commands given here to generate the configuration file, and generate assertions and dump these generated assertions to a text file. 

    ./harm --vcd <path_to_.vcd_file> --conf <path_to_conf_file> --generate-config --vcd-r <recursion_depth> --vcd-ss <scope_of_signal>
    ./harm --vcd <path_to_.vcd_file> --conf <path_to_conf_file> --sva --dump-to <path-to-dump-text-file> --vcd-r <recursion_depth> --vcd-ss <scope_of_signal>
    
 The commands to  generate config file and generate assertions using HARM on arb2.vcd file is

    ./harm --vcd ../verilog/arb2/arb2.vcd --conf ../verilog/arb2/arb2.xml --generate-config --vcd-r 2 --vcd-ss arb2_bench 
    ./harm --vcd ../verilog/arb2/arb2.vcd --conf ../verilog/arb2/arb2.xml --sva --dump-to ../verilog/arb2/ --vcd-r 2 --vcd-ss arb2_bench  

See the paper below to know more about how the procedure is carried out in [harm](https://ieeexplore.ieee.org/document/9939640).

### JasperGold
[JasperGold](https://www.cadence.com/en_US/home/tools/system-design-and-verification/formal-and-static-verification.html) is the formal functional verification software. Jasper verifies the assertions provided and reports if they're proven and covered. We used **Jasper 2022.06 version**.  This is an example to run the command for arbiter2.

    jg -no_gui -allow_unsupported_OS -fpv FPV_arb2.tcl -proj arb2
 >Note: The flag `-allow_unsupported_OS`  is required if JasperGold is not run on RHEL (Red Hat Enterprise Linux).

Due to the kimit of 100MB, all teh results of Goldmine, HARM, formal verification of Jaspergold is pushed to a .tar.gz file. YOU can download using download.sh

    sh download.sh

## Responses from Models
1-shot and 5-shot learning is perfomed on GPT-3.5, GPT-4, LLaMA3-70B and CodeLLaMa2-70B model, and the responses are saved in a json format. All the models are set to their default hyperparameters with the following changed: `max_new_tokens = 1024; temperature = 1.0; seed = 50;`

The syntax errors are corrected using GPT-3.5. `final_data_*.json` files contains the responses from the models. An example of the response from CodeLLaMa2-70B for 5-shot learning is 

       "file_name": "rptr_handler.v",
       "verilog_design": "module rptr_handler #(parameter PTR_WIDTH=3) (input rclk, rrst_n, r_en, input [PTR_WIDTH:0] g_wptr_sync, output reg [PTR_WIDTH:0] b_rptr, g_rptr, output reg empty ); wire [PTR_WIDTH:0] b_rptr_next; wire [PTR_WIDTH:0] g_rptr_next; assign b_rptr_next = b_rptr + (r_en & !empty); assign g_rptr_next = (b_rptr_next >>1)^b_rptr_next; assign rempty = (g_wptr_sync ==       g_rptr_next); always@(posedge rclk or negedge rrst_n) begin if(!rrst_n)       begin b_rptr <= 0; g_rptr <= 0; end else begin b_rptr <= b_rptr_next;        g_rptr <= g_rptr_next; end end always@(posedge rclk or negedge rrst_n) begin if(!rrst_n) empty <= 1; else empty <= rempty; end endmodule", 
       "assertions_codellama2_70b_5shot": " (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &&!empty) |-> (g_rptr!= g_wptr_sync); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!= g_wptr_sync); (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &&!empty) |-> (g_rptr!=b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en &&!empty) |-> (g_rptr!=b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!= g_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &&!empty) |-> (g_rptr!= b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en &&!empty) |-> (g_rptr!= b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!=   g_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &&!empty) |-> (g_rptr!= b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en &&!empty) |-> (g_rptr!= b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!= g_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &!empty) |-> (g_rptr!= b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en &&!empty) |-> (g_rptr!= b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!= g_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &&!empty) |-> (g_rptr!= b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en&&!empty) |-> (g_rptr!= b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en&&!empty) |-> (g_rptr!= g_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en&&!empty) |-> (g_rptr!= b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en&&!empty) |-> (g_rptr!= b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!= g_rptr_next); (r_en   &&!empty) |-> (b_rptr!= g_wptr_sync); (r_en &&!empty) |-> (g_rptr!=     b_rptr_next); (r_en &&!empty) |-> (b_rptr!= g_rptr); (r_en &&!empty) |-> (g_rptr!= b_rptr); (r_en &&!empty) |-> (b_rptr!= g_rptr_next); (r_en &&!empty) |-> (g_rptr!= g"

## Formal Verification of generated assertions
After correcting the errors, these assertions are formally verified using JasperGold. We've followed the same process used to verify the assertions generated from GoldMine and HARM. 




<!--stackedit_data:
eyJoaXN0b3J5IjpbLTU1NTg4Mjk2NywtNzk3NTE1NzcxLC03OT
c1MTU3NzEsMTE5NTM0NzI0NSwtNTI5MzY4NjAzLDMzNzA0MzU3
MSw3NjY0OTc4ODIsLTg1NjE5Njc4OCwyMDcxODIyNzIwLDE1Mj
g0MTM2MDYsLTE2NDY0MzY1ODcsNzA1MzA3NzExLC04MDQyNTg1
NzUsLTc5MTA3ODI0Myw4NDUzNDY5ODIsLTEzMzYzMzM0NDAsLT
E1MjI0NTcxOTAsODc0MzEzMDc5LDE4NTgwODc1MjEsLTEzMDc2
NTAyOTNdfQ==
-->
