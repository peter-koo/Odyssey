#!/bin/bash
#
# filename: batch_kallisto.sh
# summary: runs the Kallisto transcript quanitification with arguments:
#	<path_to_aligned_bam> <path_to_index_transcripts> <output_directory>
# example: sbatch run_kallisto.sh $DATA $INDEX $OUTPUT
#
#SBATCH -J Kallisto                     # job name
#SBATCH -p serial_requeue               # partition (general,serial_requeue)
#SBATCH -n 4				# number of cores
#SBATCH -N 1                            # number of nodes
#SBATCH --mem 8000                     # memory pool for all cores
#SBATCH -t 0-2:00                       # time (D-HH:MM)
#SBATCH -o log/gtf_to_fasta_%A.out          # STDOUT
#SBATCH -e log/gtf_to_fasta_%A.err          # STDERR
#SBATCH --mail-type=FAIL                # notifications (END,FAIL,ALL)
#SBATCH --mail-user=peter_koo@harvard.edu     # send-to address

#load modules 
source new-modules.sh
module load tophat

# run kallisto for transcript quantificaiton 
gtf_to_fasta \
$1 \
$2 \
$3

