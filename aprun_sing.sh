#!/usr/bin/env bash
set -euo pipefail
PROCS="${1:?procs}"       # aprun -n
OMP_T="${2:?omp_threads}" # aprun -d
IMG="${3:?sandbox_path}"  # sandbox 디렉토리
shift 3
CMD="${*:?cmd}"
aprun -n "${PROCS}" -d "${OMP_T}" \
  singularity exec -e --pwd "$PWD" --no-home "${IMG}" \
  bash -lc "${CMD}"
