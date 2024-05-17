# This file is used to export variables that are used throughout this entire workflow

##########
# Variables for 00_install_obitools4
##########

# directory where obitools4 github repository was cloned
export OBI_GIT_DIR=/scratch/gpfs/bjarnold/obitools4

# directory where you would like obitools4 installed
export OBI_INSTALL_DIR=/home/bjarnold/programs/obitools4


##########
# Variables for 01_download_databases
##########

# specify a base directory 

# directory where the NCBI taxonomy database will be downloaded
export NCBI_TAXONOMY_DB_DIR=/scratch/gpfs/bjarnold/Pringle/pringle_lab_metabarcoding/obitools4_tutorial/taxonomy

# directory where the NCBI genbank database will be downloaded
# this directory should contain the Release-XXX directory after running 02_download_sequences_gb.sh
export NCBI_GENBANK_DB_DIR=/scratch/gpfs/bjarnold/Pringle/pringle_lab_metabarcoding/obitools4_tutorial/genbank
# specify the release of the genbank database that was downloaded
RELEASE=Release-260
export NCBI_GENBANK_RELEASE_DIR=${NCBI_GENBANK_DB_DIR}/${RELEASE}

