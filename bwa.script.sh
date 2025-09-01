#!/bin/bash

#PBS -N bwaaa
#PBS -l select=9:ncpus=8
#PBS -l walltime=36:00:00
#PBS -j oe
#PBS -V

cd $PBS_O_WORKDIR
aprun -n 9 -N 1 -d 8 bash bwa_script.sh
