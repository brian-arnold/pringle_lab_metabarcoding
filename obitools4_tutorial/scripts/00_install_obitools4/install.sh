#!/bin/bash

# load the environment variables
source ../env_vars.sh

# the shell script we will run to install obitools4 came directly from the github repository parent directory
bash ${OBI_GIT_DIR}/install_obitools.sh --install-dir ${OBI_INSTALL_DIR}
