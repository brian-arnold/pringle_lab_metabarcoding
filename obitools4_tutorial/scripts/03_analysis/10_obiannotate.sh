#!/bin/bash
#SBATCH -J obiannotate
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=10G         # memory per cpu-core (4G is default)
#SBATCH --time 0-05:00:00        # DAYS-HOURS:MINUTES:SECONDS


# THIS NEEDS TO REQUEST MULTIPLE CPUS OR IT FAILS


source /home/bjarnold/miniconda3/etc/profile.d/conda.sh

OBITOOLS4_DIR=/home/bjarnold/programs/obitools4/bin

BASE_DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial
DATA_DIR=${BASE_DIR}/wolf_data
RESULTS_DIR=${BASE_DIR}/wolf_data_results
TAXO_DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/taxonomy


${OBITOOLS4_DIR}/obiannotate  --delete-tag=obiclean_head \
--delete-tag=obiclean_headcount \
--delete-tag=obiclean_internalcount \
--delete-tag=obiclean_samplecount \
--delete-tag=obiclean_singletoncount \
${RESULTS_DIR}/wolf.ali.assigned.simple.clean.c10.l80.taxo.fasta \
> ${RESULTS_DIR}/wolf.ali.assigned.simple.clean.c10.l80.taxo.ann.fasta


