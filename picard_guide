tjbae@ngate1:~/snakemake/data/fastq> cat picard_job_script.sh 
#!/bin/sh

#PBS -N picard
#PBS -l select=9:ncpus=8
#PBS -l walltime=24:00:00
#PBS -j oe
#PBS -V

cd $PBS_O_WORKDIR

aprun -n 9 -N 1 -d 8 bash picard_script.sh
tjbae@ngate1:~/snakemake/data/fastq> cat picard_script.sh 
#!/bin/bash


module use /s3/opt/modulefiles
module load java/22

java -jar /s3/opt/soft/picard-2.23.4/picard.jar MarkDuplicates I=SRR34149117.sorted.bam O=SRR34149117.marked.bam M=SRR34149117.metrics VALIDATION_STRINGENCY=LENIENT REMOVE_DUPLICATES=false ASSUME_SORTED=true
