#!/bin/bash

EXP_NAME="test_efficiency"

RESUME=$1
# echo $RESUME
if [ $RESUME == 0 ]; then
    rm $EXP_NAME/mined -r
    # rm $EXP_NAME/hashes -r
    rm $EXP_NAME/logs -r
    rm $EXP_NAME/mined -r
    rm $EXP_NAME/mined_split -r
    echo "from scratch"
else
    echo "resume from last run"
fi

python -u -m cc_net --config config/test_efficiency_1998.json 2>&1 | tee -a logs/test_efficiency_1998.log

# Track the memory usage

# mprof run -C python -u -m cc_net --config config/test_efficiency_1998.json 2>&1 | tee -a logs/test_efficiency_96.log

# TODO: 与log冲突？
# memray run -m cc_net --config config/test_efficiency_1998.json 2>&1 | tee -a logs/test_efficiency_96.log