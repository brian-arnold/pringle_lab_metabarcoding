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
DB_BASE_DIR=/scratch/gpfs/bjarnold/Pringle/pringle_lab_metabarcoding/obitools4_tutorial

# directory where the NCBI taxonomy database will be downloaded
export NCBI_TAXONOMY_DB_DIR=${DB_BASE_DIR}/taxonomy

# directory where the NCBI genbank database will be downloaded
# this directory should contain the Release-XXX directory after running 02_download_sequences_gb.sh
export NCBI_GENBANK_DB_DIR=${DB_BASE_DIR}/genbank
# specify the release of the genbank database that was downloaded
RELEASE=Release-258
export NCBI_GENBANK_RELEASE_DIR=${NCBI_GENBANK_DB_DIR}/${RELEASE}


##########
# Variables for 02_build_reference
##########

RESULTS_DIR=/scratch/gpfs/bjarnold/Pringle/pringle_lab_metabarcoding/obitools4_tutorial/wolf_data_results2

export BUILD_REF_OBIPCR_F_PRIMER=TTAGATACCCCACTATGC
export BUILD_REF_OBIPCR_R_PRIMER=TAGAACAGGCTCCTCTAG
export BUILD_REF_OBIPCR_OUT=${RESULTS_DIR}/v05.pcr.fasta

export BUILD_REF_OBIGREP_OUT=${RESULTS_DIR}/v05_clean.fasta

export BUILD_REF_OBIUNIQ_OUT=${RESULTS_DIR}/v05_clean_uniq.fasta
export BUILD_REF_OBIREFIDX_OUT=${RESULTS_DIR}/v05_clean_uniq.indexed.fasta


