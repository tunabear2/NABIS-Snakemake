tjbae@ngate1:~/snakemake/data/fastq> cat fastp_job_script.sh 
#!/bin/sh

#PBS -N fastp
#PBS -l select=1:ncpus=12
#PBS -l walltime=00:30:00
#PBS -j oe
#PBS -V

cd $PBS_O_WORKDIR
aprun -n 1 bash fastp_script.sh


tjbae@ngate1:~/snakemake/data/fastq> cat fastp_script.sh 
#!/bin/bash

module use /s3/opt/modulefiles/
module load s3_opt/1.0
module load gcc/9.3.0

fastp -i SRR34149117_1.fastq -I SRR34149117_2.fastq -o SRR34149117_trimmed1.fastq -O SRR34149117_trimmed2.fastq --html SRR34149117.html --json SRR34149117.json
