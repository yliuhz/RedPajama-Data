#!/bin/bash

EXP_NAME="test_efficacy"

RESUME=$1
# echo $RESUME
if [ $RESUME == 0 ]; then
    rm $EXP_NAME/mined -r
    rm $EXP_NAME/hashes -r
    rm $EXP_NAME/logs -r
    rm $EXP_NAME/mined -r
    rm $EXP_NAME/mined_split -r
    echo "from scratch"
else
    echo "resume from last run"
fi

# test efficiency
# python -u -m cc_net --config config/test_efficiency_1998.json 2>&1 | tee logs/test_efficiency_1998.log

# Track the memory usage

# mprof run -C python -u -m cc_net --config config/test_memory.json 2>&1 | tee -a logs/test_memory.log

# TODO: 与log冲突？
# memray run -m cc_net --config config/test_memory.json 2>&1 | tee -a logs/test_memory.log
# memray run -m cc_net --config config/test_memory.json

# test efficacy
python -u -m cc_net --config config/test_efficacy.json 2>&1 | tee logs/test_efficacy.log