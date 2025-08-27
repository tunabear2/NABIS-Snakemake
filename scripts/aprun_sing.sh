#!/usr/bin/env bash
set -euo pipefail
PROCS="${1:?procs}"
OMP_T="${2:?omp_threads}"
IMG="${3:?sandbox_path}"
shift 3
CMD="${*:?cmd}"
aprun -n "${PROCS}" -d "${OMP_T}" singularity exec -e --pwd "$PWD" --no-home "${IMG}" bash -lc "${CMD}"
