#!/bin/bash
#SBATCH -J obipcr
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=60G         # memory per cpu-core (4G is default)
#SBATCH --time 3-00:00:00        # DAYS-HOURS:MINUTES:SECONDS

source /home/bjarnold/miniconda3/etc/profile.d/conda.sh

OBITOOLS4_DIR=/home/bjarnold/programs/obitools4/bin

BASE_DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial
DATA_DIR=${BASE_DIR}/wolf_data
RESULTS_DIR=${BASE_DIR}/wolf_data_results

GENBANK_DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/genbank/Release-258
TAXO_DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/taxonomy

# NOTE: tutorial used -t option for obipcr but this is an error as this command doesn't accept this option

${OBITOOLS4_DIR}/obigrep -t ${TAXO_DIR} \
--require-rank species \
--require-rank genus \
--require-rank family \
${RESULTS_DIR}/v05.pcr.fasta > ${RESULTS_DIR}/v05_clean.fasta