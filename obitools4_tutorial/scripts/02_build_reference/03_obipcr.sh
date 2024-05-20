#!/bin/bash
#SBATCH -J obipcr
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=4        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=40G         # memory per cpu-core (4G is default)
#SBATCH --time 1-00:00:00        # DAYS-HOURS:MINUTES:SECONDS


# from the docs:
# build the reference database is to use the obipcr program to simulate a PCR 
# and extract all sequences from a general purpose DNA database such as genbank 
# or EMBL that can be amplified in silico by the two primers used for PCR 
# amplification.

# NOTE: with ~20G memory per cpu this job was killed by the cluster

source ../env_vars.sh

# NOTES: 
# tutorial used -t option for obipcr but this is an error as this command doesn't accept this option
# -e, --allowed-mismatches: Maximum number of mismatches allowed for each primer.
# -l, --min-length: Minimum length of the barcode (primers excluded)
# -L, --max-length: Maximum length of the barcode (primers excluded)

${OBI_INSTALL_DIR}/bin/obipcr \
--max-cpu 4 \
-e 3 \
-l 50 \
-L 150 \
--genbank \
--forward ${BUILD_REF_OBIPCR_F_PRIMER} \
--reverse ${BUILD_REF_OBIPCR_R_PRIMER} \
--no-order \
${NCBI_GENBANK_RELEASE_DIR}/gb*.seq.gz \
> ${BUILD_REF_OBIPCR_OUT}