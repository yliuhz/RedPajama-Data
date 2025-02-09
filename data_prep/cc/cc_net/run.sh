#!/bin/bash

EXP_NAME="test_efficiency_128"

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

python -u  -m cc_net --config config/$EXP_NAME.json 2>&1 | tee -a logs/final_5_pipelines_$EXP_NAME.log