# Installation

to install it on hoffman2, run this script: [install_metaxa2_02212019.sh](scripts/install_metaxa2_02212019.sh)
Notes:
* It requires a legacy blast-2.2 version
* change the variable `$WORK` to your own working directory if you like


# Run the program

run these commands in a terminal to set up the environment

```bash
WORK=/u/project/rwayne/meixilin/Anacapa_metaxa2

module load mafft/7.222

export PATH="$PATH:$WORK"
export PATH="$PATH:${WORK}/blast-2.2.26/bin"
export PATH="$PATH:${WORK}/hmmer-3.2.1/bin"
```
