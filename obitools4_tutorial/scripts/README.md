
All directories and scripts are prefixed with numerical indices indicating the order in which scripts were run.

Scripts in `00_install_obitools4` and `01_download_databases` only need to be run once per project, unless you want a newer release of the Genbank database.

All scripts are named according to the headings in obitools4 tutorial.

All variables used throughout the workflow are specified in `env_vars.sh`, which are then exported at the begining of every script using the `source` command.
