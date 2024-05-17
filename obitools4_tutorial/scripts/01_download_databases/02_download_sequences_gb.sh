#!/bin/bash
source ../env_vars.sh

# NOTE: since this command requires the internet, it must be run on a login node.
# I suggest creating a screen session and running it there so that it continues to run even if you disconnect.

# download_gb.sh modified from original to have location of wget2 installation
# original script is from the github repo in the /obitools4/public subdir
# here, I did `tar -zxvf the wolf_diet.tgz` to get the `wolf_data` directory
# and the download_gb.sh script is located within `wolf_data`

SH_SCRIPT=$(pwd)/download_gb.sh

mkdir -p ${NCBI_GENBANK_DB_DIR}
cd ${NCBI_GENBANK_DB_DIR}

# run the download_gb.sh script, which will create a Release-XXX directory in the current directory
bash ${SH_SCRIPT}
