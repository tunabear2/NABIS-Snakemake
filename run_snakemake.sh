#!/bin/sh
#PBS -N snakemake
#PBS -q nabic
#PBS -l select=1:ncpus=24:mpiprocs=1:ompthreads=24
#PBS -l walltime=10:00:00
#PBS -j oe

cd "$PBS_O_WORKDIR"

module use /s3/opt/modulefiles
module load singularity/2.6.1

aprun -n 1 -d 1 singularity exec -e --pwd "$PWD" --no-home /s1/home/extRDA/tjbae/snakemake/sandbox/snakemake_sandbox bash -lc 'snakemake -j 1 --rerun-incomplete --printshellcmds'
