#!/bin/bash

# rm test_efficiency/mined -r
# rm test_efficiency/hashes -r
# rm test_efficiency/logs -r
# rm test_efficiency/mined -r
# rm test_efficiency/mined_split -r


python -u  -m cc_net --config config/test_efficiency2.json 2>&1 | tee -a logs/final_5_pipelines.log