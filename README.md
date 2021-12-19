###LLVM Pass to write data and control flow graph for each statement
[![Build](https://circleci.com/gh/k3ut0i/xmonad-conf.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/k3ut0i/llvm-dataflow-graphs)
[![MIT](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](http://opensource.org/licenses/MIT)

This is similar to graph-llvm-ir by pfalcon. but there seems to be some problems for it.

This flow is constructed in the context of hdl design. so flow between function calls makes sense
with design flattening(hdl). Some options to show individual flows may be added later.

Current Status:
1.  Control flow is good per function. should add?? between function blocks and calling
    statements??.
2.  Data flow just getting started.


Errors:
1.  Global Data dependency not showing.
2.  Edges from ret val of function to call node.
3.  Handling core library functions.

TODO:
1.  The errors.
2.  struct type single node for arguments of a function.
3.  edges between functions and calls too cluttered find resonable comprimise.
4.  Hilights for certain nodes and edges based on the results of some optimization passes. _Example_:
    the nodes which will be removed during some optimization processes. try to use inbuilt passes
and analyze the diff the resulting ir's to find the missing nodes._Or_ can a copy of the original
llvm-ir can be kept in memory to analyze the passes.??
5.  Use and update memorydependence analysis and aliasanalysis for logic instead of custom
    funcitons. also use llvm in built containers.
It's sample test code.
```c
!inc(samples/VectorProduct.c)
```
Output Dot image
![dotfile](https://raw.githubusercontent.com/k3ut0i/llvm-dataflow-graphs/master/ctrl-data.png)


