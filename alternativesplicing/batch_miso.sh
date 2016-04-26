#!/bin/bash
#
# filename: batch_bamsortindex.sh
# summary: convert bam to a sorted indexed bam file
#
#SBATCH -J BamSortIndex					# job name
#SBATCH -p serial_requeue        	# partition (general,serial_requeue)
#SBATCH -n 2                       # number of cores
#SBATCH -N 1                            # number of nodes
#SBATCH --mem 4000                	# memory pool for all cores
#SBATCH -t 0-12:00                       # time (D-HH:MM)
#SBATCH -o log/sam_%A.out   	# STDOUT
#SBATCH -e log/sam_%A.err     	# STDERR
#SBATCH --mail-type=FAIL 		# notifications (END,FAIL,ALL)
#SBATCH --mail-user=peter_koo@harvard.edu     # send-to address

# load modules

source activate pyMISO