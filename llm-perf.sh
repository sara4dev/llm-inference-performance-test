#!/usr/bin/env bash

git clone https://github.com/ray-project/llmperf.git
cd llmperf
pip install -e .

export OPENAI_API_BASE="http://localhost:8000/v1"
export OPENAI_API_KEY="test"

python token_benchmark_ray.py \
--model "meta-llama/Llama-2-7b-chat-hf" \
--mean-input-tokens 550 \
--stddev-input-tokens 150 \
--mean-output-tokens 150 \
--stddev-output-tokens 10 \
--max-num-completed-requests 2 \
--timeout 600 \
--num-concurrent-requests 1 \
--results-dir "result_outputs" \
--llm-api openai \
--additional-sampling-params '{}' \
--results-dir "../llmperf_outputs/"
