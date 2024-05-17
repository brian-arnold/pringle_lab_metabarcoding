#!/bin/bash

# download_gb.sh modified from original to have location of wget2 installation
# original script is from the github repo in the /obitools4/public subdir
# here, I did `tar -zxvf the wolf_diet.tgz` to get the `wolf_data` directory
# and the download_gb.sh script is located within `wolf_data`

SH_SCRIPT=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/scripts/taxonomic_assignment/download_gb.sh
DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/genbank

cd ${DIR}

bash ${SH_SCRIPT}
