## Previous Works!

 1. VerilogEval: Evaluating Large Language Models for Verilog Code Generation [Link to Paper](https://arxiv.org/pdf/2309.07544.pdf)
 2. Can Large Language Models Reason about Program Invariants? [Link to Paper](https://openreview.net/pdf?id=mXv2aVqUGG)
 3. Using LLMs to Facilitate Formal Verification of RTL [Link to Paper](https://browse.arxiv.org/pdf/2309.09437.pdf)
 4. LLM-assisted Generation of Hardware Assertions [Link to Paper](https://arxiv.org/pdf/2306.14027.pdf)

## How to navigate the repository?
There are four design modules that we will discuss here a) arb2, b) usbf_idma, c) usbf_pa, and d) usbf_pd.
The directory structure looks like the following:

    arb2/ [root directory / design directory]
    ├── pic [Directory containing different pictorial resentation for different outputs]
    │   ├── gnt1 [Output of the design (in this case arb2 design)]
    │   └── gnt2 [Output of the design (in this case arb2 design)]
    ├── preprocessed_code [Contains the Verilog code of the design]
    ├── static [Contains the hardware design source analysis results]
    │   ├── cdfg [Contains Control-Data Flow graph of a design]
    │   │   └── arb2
    │   ├── cone [Contains cone of influence per output of a design]
    │   ├── def
    │   ├── dep
    │   ├── path
    │   ├── use
    │   └── var_dep_graph
    ├── tracedata
    └── verif
        └── prism
            ├── gnt1
            └── gnt2


arb2/ 
├── pic 
│   ├── gnt1 [**Output of the design (in this case arb2 design)**]
│   └── gnt2 [**Output of the design (in this case arb2 design)**]
├── preprocessed_code [**Contains the Verilog code of the design**]
├── static [**Con**]
│   ├── cdfg
│   │   └── arb2
│   ├── cone
│   ├── def
│   ├── dep
│   ├── path
│   ├── use
│   └── var_dep_graph
├── tracedata
└── verif
    └── prism
        ├── gnt1
        └── gnt2

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTY3MDkxNzU3MSwxODQ1NjIyNTU0XX0=
-->