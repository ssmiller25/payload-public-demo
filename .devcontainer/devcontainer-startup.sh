#!/usr/bin/env bash

repo_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && cd .. && pwd -P)
cd ${repo_dir}
# Download Dependencies
yarn
# Modify env if in a codespace
if [[ -n "${CODESPACE_NAME}" ]]; then
  
  export PAYLOAD_PUBLIC_SERVER_URL="https://${GITHUB_USER}-${CODESPACE_NAME}-${PAYLOAD_PORT}.preview.app.github.dev"
fi

# Launch Dev
yarn dev