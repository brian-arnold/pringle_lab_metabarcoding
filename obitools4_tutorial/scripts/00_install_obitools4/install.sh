#!/bin/bash

# this is the cloned github repository location
OBIDIR=/scratch/gpfs/bjarnold/obitools4

# this is the location I'm specifying for install since default is /usr/local
INSTALLDIR=/home/bjarnold/programs/obitools4

# the shell script we will run came directly from the github repo parent directory
bash ${OBIDIR}/install_obitools.sh --install-dir ${INSTALLDIR}

