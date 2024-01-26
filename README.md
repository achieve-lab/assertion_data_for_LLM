## Previous Works!

 1. VerilogEval: Evaluating Large Language Models for Verilog Code Generation [Link to Paper](https://arxiv.org/pdf/2309.07544.pdf)
 2. Can Large Language Models Reason about Program Invariants? [Link to Paper](https://openreview.net/pdf?id=mXv2aVqUGG)
 3. Using LLMs to Facilitate Formal Verification of RTL [Link to Paper](https://browse.arxiv.org/pdf/2309.09437.pdf)
 4. LLM-assisted Generation of Hardware Assertions [Link to Paper](https://arxiv.org/pdf/2306.14027.pdf)

## How to navigate the repository?
There are four design modules that we will discuss here a) arb2, b) usbf_idma, c) usbf_pa, and d) usbf_pd. The directory structure fora **design** looks like the following:

    design/ [root directory / design directory]
    ├── pic [Directory containing different pictorial resentation for different outputs]
    │   ├── out1 [Output of the design]
    │   └── out2 [Output of the design]
    ├── preprocessed_code [Contains the Verilog code of the design]
    ├── static [Contains the hardware design source analysis results]
    │   ├── cdfg [Contains Control-Data Flow graph of a design]
    │   │   └── design
    │   ├── cone [Contains cone of influence (COI) per output of a design]
    │   ├── def [Contains the definition chain of a design]
    │   ├── dep [Contains the dependency information among design variables of a design]
    │   ├── path [Contains different desin paths of a design as a concatenation of nodes in CDFG]
    │   ├── use [Contains the use chain of a design]
    │   └── var_dep_graph [Contains the variable dependency graph of a design]
    ├── tracedata [Contains the execution trace data of a design]
    └── verif [Contains the assertions for a design and other associated information]
        └── prism
            ├── gnt1
            └── gnt2

 The primary directories that are of interest in each of these designs are `preprocessed_code` and `verif`.
 

 - The `preprocessed_code` has the design source code. We want to use large-language models (LLMs) to understand the syntax and semantics of the source code. Now syntax is relatively easy to understand, however, semantics is different. A corresponding *proxy task* to understand the semantic of the program is to understand different abstract representation of the hardware design code, *e.g.,* Control-Data Flow Graph (CDFG), Variable Dependency Graph (VDG), Cone of Influence (COI). Each of these CDFG ([CDFG](arb2/static/cdfg/arb2/arb2.pdf)), VDG ([VDG](arb2/static/var_dep_graph/arb2.pdf)), and COI ([COI](arb2/static/cone/gnt1.pdf)) can be representted as a directed graph.However, the question is **How can we use a Large Language Model to understand the semantic using these proxy artifacts?** It is imperative to understand both syntax and semantics for the model to perform well.

 - All the assertions are available in the `verif` folder (please see the directory tree above to locate one such folder). An example assertion file `arb2` is available [here](arb2/verif/prism/gnt2/gnt2.gold). Each assertion is named as `a1`, `a2`, ...., etc.
       - & represents logical/Boolean AND operation.
       - `->` and `=>` represents implication operator.
       - `#` represents a temporal/cycle operator.
       - `==` represents equality checking operator.
       
- Another important question **How do we use LLM to mine massive dataset to infer properties/assertion?** Ideally, the semantics understood at the first point should be able to guide such mining. However, **how we embed such domain knowledge in LLM?**

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTU0MDIxODE5Miw2Njg3ODE2MzcsLTIwNz
Q1OTc2NDMsLTE4NTc5NTc2LDE4NDU2MjI1NTRdfQ==
-->