#!/bin/bash

API_KEY="$1"
USER_INPUT="$2"

curl -s -X POST https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d "$(printf '{"model": "gpt-3.5-turbo", "messages": [{"role": "user", "content": "%s"}]}' "$USER_INPUT")"
