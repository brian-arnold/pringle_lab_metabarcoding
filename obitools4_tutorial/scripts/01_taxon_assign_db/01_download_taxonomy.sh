#!/bin/bash

# this command has been slightly modified from the tutorial but contains all the same commands
# In the tutorial they pipe the output of wget to tar, but it wasn't working for me for some reason

TAXDIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/taxonomy

cd ${TAXDIR}

wget http://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz

tar zxvf taxdump.tar.gz 
