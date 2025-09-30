# NABIS-Snakemake
슈퍼컴퓨팅 환경에서 Snakemake 설정 (PBS Pro + aprun + singularity 2.6.1)
# NABIS 환경
OS : SUSE LINUX Enterprise Server 11 (x86_64) , Release: 11 , kernel : 3.0.101-0.46-default
# singularity 2.6.1 설치
Install basic tools for compiling

sudo yum groupinstall -y 'Development Tools'
Install RPM packages for dependencies

sudo yum install -y \
libseccomp-devel \
libuuid-devel \
libarchive-devel \
squashfs-tools \
cryptsetup \
openssl-devel \
wget git

파이썬도 설치하고, singularity([apptainer/singularity at vault/release-2.6](https://github.com/apptainer/singularity/tree/vault/release-2.6))도 설치함.

`$ cd singularity-2.6.1 한다음에`

`$ ./autogen.sh`

```
$ VER=2.6.1

$ wget https://github.com/sylabs/singularity/releases/download/$VER/singularity-$VER.tar.gz

$ tar xvf singularity-$VER.tar.gz
```
