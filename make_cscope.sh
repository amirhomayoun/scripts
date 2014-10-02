#!/bin/sh
# Run like this: "make_cscope.sh ." to create cscope files for the project
echo "Finding relevant source files..."
find -L $1 -iname "*.c" -o -iname "*.cc" -o -iname "*.cpp" -o -iname "*.h" -o -iname "*.hpp" > $1/cscope.files
echo "All CC, CPP, H, HPP fils were scanned and scopes.files was created here."
echo "Creating cscope.out file..."
cscope -b -q -R -i cscope.files -f cscope.out 
echo "Done!"
