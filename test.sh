clang -emit-llvm -o VectorProduct.bc -c samples/VectorProduct.c
opt -load ./libdataflow.so -dot-dataflow VectorProduct.bc  -disable-output
dot -Tpng ctrl-data.dot -o ctrl-data.png
