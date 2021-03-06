#!/bin/bash
#
#SBATCH -J Cufflinks			# job name
#SBATCH -p serial_requeue               # partition (general,serial_requeue)
#SBATCH -n 8                            # number of cores
#SBATCH -N 1                            # number of nodes
#SBATCH --mem 32000                     # memory pool for all cores
#SBATCH -t 0-2:00                       # time (D-HH:MM)
#SBATCH -o log/cufflinks_%A.out         # STDOUT
#SBATCH -e log/cufflinks_%A.err         # STDERR

# load modules
source new-modules.sh
module import cufflinks/2.2.1-fasrc01

# perform transcript assembly 
cufflinks \
-p 2 \
-G $2 \
-o $3 \
$1

