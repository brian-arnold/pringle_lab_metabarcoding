#!/bin/bash
source ../env_vars.sh

# NOTE: since this command requires the internet, it must be run on a login node.
# I suggest creating a screen session and running it there so that it continues to run even if you disconnect.

# this command has been slightly modified from the tutorial but contains all the same commands
# In the tutorial they pipe the output of wget to tar, but it wasn't working for me for some reason

mkdir -p ${NCBI_TAXONOMY_DB_DIR}
cd ${NCBI_TAXONOMY_DB_DIR}

# download the taxonomy database
wget http://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz

# extract the taxonomy database
tar zxvf taxdump.tar.gz 
