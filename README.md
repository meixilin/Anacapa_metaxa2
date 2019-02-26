# Installation

to install it on hoffman2, run this script: [install_metaxa2_02212019.sh](scripts/install_metaxa2_02212019.sh)
Notes:
* It requires a legacy blast-2.2 version
* change the variable `$WORK` to your own working directory if you like


# Run the program

run these commands in a terminal to set up the environment

```bash
WORK=/u/project/rwayne/meixilin/Anacapa_files/Anacapa_metaxa2

module load mafft/7.222

export PATH="$PATH:$WORK"
export PATH="$PATH:${WORK}/blast-2.2.26/bin"
export PATH="$PATH:${WORK}/hmmer-3.2.1/bin"
```

# Important notes

> Hi Meixi, For metaxa2_dbb there is an option -r that is pretty important. This option is to select a sequence that is used as the representative sequence to define the start and end of the barcoding region. If you don't define this option, the program will just pick the first sequence in the reference fasta. Otherwise the options for the database build are pretty straightforward. Let me know if you have any questions. -Lenore
