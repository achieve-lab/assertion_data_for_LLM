## Previous Works!

 1. VerilogEval: Evaluating Large Language Models for Verilog Code Generation [Link to Paper](https://arxiv.org/pdf/2309.07544.pdf)
 2. Can Large Language Models Reason about Program Invariants? [Link to Paper](https://openreview.net/pdf?id=mXv2aVqUGG)
 3. Using LLMs to Facilitate Formal Verification of RTL [Link to Paper](https://browse.arxiv.org/pdf/2309.09437.pdf)
 4. LLM-assisted Generation of Hardware Assertions [Link to Paper](https://arxiv.org/pdf/2306.14027.pdf)

## How to navigate the repository?
There are four design modules that we will discuss here a) arb2, b) usbf_idma, c) usbf_pa, and d) usbf_pd.
The directory structure looks like the following:

��<pre><font color="#0087FF">arb2/</font> %%% <font color="#0087FF">pic</font> %�� %%% <font color="#0087FF">gnt1</font> %�� %%% <font color="#0087FF">gnt2</font> %%% <font color="#0087FF">preprocessed_code</font> %%% <font color="#0087FF">static</font> %�� %%% <font color="#0087FF">cdfg</font> %�� %�� %%% <font color="#0087FF">arb2</font> %�� %%% <font color="#0087FF">cone</font> %�� %%% <font color="#0087FF">def</font> %�� %%% <font color="#0087FF">dep</font> %�� %%% <font color="#0087FF">path</font> %�� %%% <font color="#0087FF">use</font> %�� %%% <font color="#0087FF">var_dep_graph</font> %%% <font color="#0087FF">tracedata</font> %%% <font color="#0087FF">verif</font> %%% <font color="#0087FF">prism</font> %%% <font color="#0087FF">gnt1</font> %%% <font color="#0087FF">gnt2</font> </pre>
arb2/ [**root directory / design directory**]
├── pic [**Directory containing different pictorial resentation for different outputs**]
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
eyJoaXN0b3J5IjpbLTEwMzQ2NjUzOTYsMTg0NTYyMjU1NF19
-->