#!/bin/bash

# Enable strict mode

set -ueo pipefail

echo "===== Strict Mode Demo ====="

# 1. Undefined variable (set -u)

echo "Trying to use an undefind variable..."
echo "Value: $UNDEFINED_VAR"

# 2. Failing command (set -e)
echo "Trying a failing command..."
ls /not/existing/directory

# 3. Pipe failure (set -o pipefail)

echo "Trying to pipefailure where first command fails..."

grep "text" nonexistentfile.txt | sort 

echo "This line will not execute if any error occurs"

