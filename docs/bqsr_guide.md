tjbae@ngate1:~/snakemake/data/fastq> cat bqsr_job_script.sh 
#!/bin/sh

#PBS -N bqsr
#PBS -l select=1:ncpus=12
#PBS -l walltime=24:00:00
#PBS -j oe
#PBS -V

cd $PBS_O_WORKDIR
aprun -n 1 bash bqsr_script.sh
tjbae@ngate1:~/snakemake/data/fastq> cat bqsr_script.sh 
#!/bin/bash

module use /s3/opt/modulefiles
module load java/22
module load gcc/9.3.0

/s3/opt/soft/gatk/gatk BaseRecalibrator -I SRR34149117.marked.bam -R /s1/home/extRDA/tjbae/snakemake/data/reference/Homo_sapiens_assembly38.fasta --known-sites /s1/home/extRDA/tjbae/snakemake/data/VCF/Homo_sapiens_assembly38.dbsnp138.vcf --known-sites /s1/home/extRDA/tjbae/snakemake/data/VCF/Homo_sapiens_assembly38.known_indels.vcf.gz -O SRR34149117_recal.table
