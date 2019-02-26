#!/bin/bash
#$ -l highmem,highp,h_rt=96:00:00,h_data=96G
#$ -N build_crux_db_CO1_Zeale_02262019
#$ -cwd
#$ -m bea
#$ -M meixilin
#$ -o /u/project/rwayne/meixilin/Anacapa_files/revision_feb/logs/build_crux_db_CO1_Zeale_02262019.out.txt
#$ -e /u/project/rwayne/meixilin/Anacapa_files/revision_feb/logs/build_crux_db_CO1_Zeale_02262019.err.txt

# echo job info on joblog:
echo "Job $JOB_ID started on:    " `hostname -s`
echo "Job $JOB_ID started on:    " `date `
echo " "

source /u/local/Modules/default/init/bash

# define variables
# please note that this primer is from:
# Zeale, Matt RK, et al. "Taxon‐specific PCR for DNA barcoding arthropod prey in bat faeces." Molecular ecology resources 11.2 (2011): 236-244.
# Used in
# Richardson, Rodney T., et al. "A reference cytochrome c oxidase subunit I database curated for hierarchical classification of arthropod metabarcoding data." PeerJ 6 (2018): e5126.

# Zeale et al. reported amplicon length, EXCLUDING PRIMER to be 157 bp
# Following cruxp_db specification: +/- 100 bp from 157 + 30(primer_f) + 24 (primer_r)

PRIMER=CO1_Zeale
PRIMER_F=AGATATTGGAACWTTATATTTTATTTTTGG
PRIMER_R=WACTAATCAATTWCCAAATCCTCC
MIN_LEN=111
MAX_LEN=311

WORK=/u/project/rwayne/meixilin/Anacapa_files/revision_feb
CRUX_DB=/u/project/rwayne/software/Crux/crux_db
OUTDIR=/u/project/rwayne/meixilin/crux_db/${PRIMER}

# make directory if not made before
mkdir -p ${OUTDIR}

cd ${WORK}

bash ${CRUX_DB}/crux.sh \
-u meixilin \
-n ${PRIMER} \
-f ${PRIMER_F} \
-r ${PRIMER_R} \
-s ${MIN_LEN} \
-m ${MAX_LEN} \
-o ${OUTDIR} \
-d ${CRUX_DB}

# echo job info on joblog:
echo "Job $JOB_ID ended on:   " `hostname -s`
echo "Job $JOB_ID ended on:   " `date `
echo " "
