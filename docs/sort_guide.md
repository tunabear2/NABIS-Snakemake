tjbae@ngate1:~/snakemake/data/fastq> cat samtools_job_script.sh 
#!/bin/sh

#PBS -N sort
#PBS -l select=1:ncpus=12
#PBS -l walltime=00:30:00
#PBS -j oe
#PBS -V

cd $PBS_O_WORKDIR
aprun -n 1 bash sort_script.sh
tjbae@ngate1:~/snakemake/data/fastq> cat sort_script.sh 
#!/bin/bash

module use /s3/opt/modulefiles/
module load singularity/2.6.1
module load s3_opt/1.0

singularity exec -B /s3/:/s3/ /s3/simg/ubuntu02 bash -c "export MAMBA_ROOT_PREFIX=/opt/miniconda/ && micromamba run -n bio02-env bash -c 'samtools sort SRR34149117.sam -o SRR34149117.sorted.bam'"
