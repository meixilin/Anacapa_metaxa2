#!/usr/bin/env bash

# this is a script for installing metaxa2 on hoffman2
# not completely automated, but more of the record of the codes

# Author: Meixi Lin
# Date: Feb 21, 2019

WORK=/u/project/rwayne/meixilin/Anacapa_metaxa2

cd $WORK
mkdir -p $WORK/installation_files
cd $WORK/installation_files

# 1. install perl: done.

# 2. install HMMER Ver. 3 (from HMMER documentation http://hmmer.org/download.html)
wget http://eddylab.org/software/hmmer/hmmer.tar.gz
tar -zxf hmmer.tar.gz
cd hmmer-3.2.1
./configure --prefix $WORK/hmmer-3.2.1
make
make check                 # optional: run automated tests
make install               # optional: install HMMER programs, man pages
# cd easel; make install   # optional: install Easel tools

# 3. install blast tools, they use a legacy version blast 2.2. you can get it from
cd $WORK/installation_files
wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/legacy.NOTSUPPORTED/2.2.26/blast-2.2.26-x64-linux.tar.gz
tar -zxf blast-2.2.26-x64-linux.tar.gz
mv $WORK/installation_files/blast-2.2.26 ${WORK}/blast-2.2.26

# 4. install MAFFT
module load mafft/7.222

# 5. install the metaxa2
./install_metaxa2

# Metaxa2 Installer
# -----------------
# Do you have superuser privileges? [yes/no, default = no]
# no
# Where do you want to install Metaxa2? [default = /u/home/m/meixilin/bin/]
# /u/project/rwayne/meixilin/Anacapa_metaxa2
# Do you want to add /u/project/rwayne/meixilin/Anacapa_metaxa2 to your PATH? [yes/no, default = yes]
# no
# Installing Metaxa2 in /u/project/rwayne/meixilin/Anacapa_metaxa2...
# Preparing for Usearch support...
# Setting permissions...
# Installation finished!
# Now, close this terminal and open a new one.
# You can then test if the installation succeeded by typing 'metaxa2 --help'

# get all the dependencies to the PATH,
# THIS IS VERY IMPORTANT FOR METAXA2 TO WORK
export PATH="$PATH:$WORK"
export PATH="$PATH:${WORK}/blast-2.2.26/bin"
export PATH="$PATH:${WORK}/hmmer-3.2.1/bin"
