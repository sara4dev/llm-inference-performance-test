#!/usr/bin/env bash

# conda activate myenv
# python -m vllm.entrypoints.openai.api_server --model meta-llama/Meta-Llama-3-8B-Instruct

python -m vllm.entrypoints.openai.api_server --model meta-llama/Llama-2-7b-chat-hf --dtype auto --gpu-memory-utilization 0.9 --max-model-len 2048