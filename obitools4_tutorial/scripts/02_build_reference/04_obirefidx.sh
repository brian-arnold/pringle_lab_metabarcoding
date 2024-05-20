#!/bin/bash
#SBATCH -J obipcr
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=4        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=20G         # memory per cpu-core (4G is default)
#SBATCH --time 1-00:00:00        # DAYS-HOURS:MINUTES:SECONDS

source ../env_vars.sh

${OBI_INSTALL_DIR}/bin/obirefidx -t ${NCBI_TAXONOMY_DB_DIR} \
--max-cpu 4 \
${BUILD_REF_OBIUNIQ_OUT} \
> ${BUILD_REF_OBIREFIDX_OUT}