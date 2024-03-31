#!/bin/bash

# Compile Python script (if necessary)
# If the Python script needs compilation, put the commands here.

# Execute Python script
chmod 777 script.py
python3 ./script.py

clang -S -emit-llvm input.cpp -o input.ll
clang++ -shared -fPIC pdg.cpp -o input.so `llvm-config --cxxflags --ldflags --libs`

# Run LLVM analysis and generate DOT files
opt -enable-new-pm=0 -load ./input.so -pdg < input.ll > /dev/null
opt -passes=dot-callgraph input.ll
opt -passes=dot-cfg input.ll

# Generate PNG image from the DOT file
dot -Tpng input.ll.callgraph.dot > output.png

