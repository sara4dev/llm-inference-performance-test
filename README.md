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