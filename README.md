# llm-inference-performance-test
Test various inference engines &amp; hardwares for LLM inference

## Prerequistes

* Install [minconda](https://docs.anaconda.com/free/miniconda/)
* Install [vllm](https://docs.vllm.ai/en/stable/getting_started/installation.html#install-with-pip)

```
# (Recommended) Create a new conda environment.
conda create -n myenv python=3.9 -y
conda activate myenv

# Install vLLM with CUDA 12.1.
pip install vllm
```

## vLLM

* Offline Batched Inference - `python vllm/offline-batched-inference.py`
* OpenAI-Compatible Server

```
python -m vllm.entrypoints.openai.api_server \
    --model facebook/opt-125m
```

```
curl http://localhost:8000/v1/models
```

## Benchmarks

* vLLM's benchamrk - https://github.com/vllm-project/vllm/blob/main/benchmarks/benchmark_serving.py
* LLMperf - https://github.com/ray-project/llmperf
* MLPerf - https://mlcommons.org/benchmarks/inference-datacenter/

## Tasks to do

1. deploy llama3 7b in smaller nvidia machine & expose openai compatible api
1. learn to benchmark the api
1. now that we have learned to run benchmarks, lets repeat it on a bigger machine like A100/H100
1. do the same in AMD
1. do the same in AWS
1. do the same in Intel Gaudi
1. do the same in google TPU

