#!/bin/bash
#SBATCH -J obigrep
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=12G         # memory per cpu-core (4G is default)
#SBATCH --time 0-05:00:00        # DAYS-HOURS:MINUTES:SECONDS

source /home/bjarnold/miniconda3/etc/profile.d/conda.sh

OBITOOLS4_DIR=/home/bjarnold/programs/obitools4/bin

BASE_DIR=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial
DATA_DIR=${BASE_DIR}/wolf_data
RESULTS_DIR=${BASE_DIR}/wolf_data_results


${OBITOOLS4_DIR}/obigrep \
-l 80 \
-p 'sequence.Count() >= 10' \
${RESULTS_DIR}/wolf.ali.assigned.simple.clean.fasta \
> ${RESULTS_DIR}/wolf.ali.assigned.simple.clean.c10.l80.fasta


