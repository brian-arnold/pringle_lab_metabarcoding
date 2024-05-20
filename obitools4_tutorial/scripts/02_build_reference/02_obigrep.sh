#!/bin/bash
#SBATCH -J obipcr
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=4        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=20G         # memory per cpu-core (4G is default)
#SBATCH --time 1-00:00:00        # DAYS-HOURS:MINUTES:SECONDS

# from the docs:
# filter sequences so that they have a good taxonomic description at the species, 
# genus, and family levels (obigrep command command below).

source ../env_vars.sh

# NOTE: tutorial used -t option for obipcr but this is an error as this command doesn't accept this option

${OBI_INSTALL_DIR}/bin/obigrep -t ${NCBI_TAXONOMY_DB_DIR} \
--max-cpu 4 \
--require-rank species \
--require-rank genus \
--require-rank family \
${BUILD_REF_OBIPCR_OUT} > ${BUILD_REF_OBIGREP_OUT}