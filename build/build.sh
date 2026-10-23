#!/usr/bin/env bash

# Arguments


set -euo pipefail



python -m venv .venv
. .venv/bin/activate

pip install --upgrade uv

uv pip install -r requirements.txt --force-reinstall --upgrade

python -m ipykernel install --user --name=.venv

cd .. && python -m uv pip install --upgrade -e .


# python scripts/



deactivate

# rm -rf .venv