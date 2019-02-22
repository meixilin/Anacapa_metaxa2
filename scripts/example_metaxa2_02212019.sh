#!/usr/bin/env bash

# this is a script for using metaxa2 on hoffman2
# not completely automated, but more of the record of the codes

# Author: Meixi Lin
# Date: Feb 21, 2019

# define environment
WORK=/u/project/rwayne/meixilin/Anacapa_metaxa2
cd ${WORK}
# THIS IS VERY IMPORTANT FOR METAXA2 TO WORK
# IT LOOK FOR EVERYTHING IN THE PATH VARIABLE
module load mafft/7.222

export PATH="$PATH:$WORK"
export PATH="$PATH:${WORK}/blast-2.2.26/bin"
export PATH="$PATH:${WORK}/hmmer-3.2.1/bin"

# get the test fasta file
TEST=${WORK}/installation_files/Metaxa2_2.2/test.fasta

metaxa2 -i ${TEST} -o test_out
