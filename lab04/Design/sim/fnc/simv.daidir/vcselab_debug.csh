#!/bin/csh -f

cd /home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab04/Design/sim/fnc

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/tools/synopsys/vcs-all/R-2020.12-SP2/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

