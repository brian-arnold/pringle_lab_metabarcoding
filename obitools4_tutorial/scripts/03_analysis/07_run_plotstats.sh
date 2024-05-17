#!/bin/bash
#SBATCH -J template
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G         # memory per cpu-core (4G is default)
#SBATCH --time 1-00:00:00        # DAYS-HOURS:MINUTES:SECONDS

source /home/bjarnold/miniconda3/etc/profile.d/conda.sh

INFILE=/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/wolf_data_results/wolf.ali.assigned.simple.clean.fasta

python 07_plotstats.py ${INFILE}