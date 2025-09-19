snakemake --executor를 HPC 환경에서 사용하려고 했더니 Plugin 이라는 것이 설치가 안돼서 사용이 불가하다는 오류가 발생하였다.
로컬 pc에서 설치
mkdir -p snakemake_plugins && cd snakemake_plugins
pip download snakemake-executor-plugin-cluster-generic -d .
HPC 환경으로 옮긴 다음
singularity exec snakemake2.simg /opt/conda/bin/python3 -m pip install --no-index --find-links /s1/home/extRDA/tjbae/snakemake_cluster_test/wheelhouse "snakemake-executor-plugin-cluster-generic==1.0.9"
tjbae@ngate1:~> singularity exec snakemake2.simg /opt/conda/bin/python3 - <<'PY'
> import importlib 
> import sys
> print("python =", sys.executable)
> importlib.import_module("snakemake_executor_plugin_cluster_generic")
> print("cluster-generic plugin OK")
> py
> PY
python = /opt/conda/bin/python3
cluster-generic plugin OK
이렇게 진행하면 snakemake_executor_plugin_cluster_generic을 python에 plugin 등록할 수 있는 것 같음.
/opt/pbs/default/bin/qsub
