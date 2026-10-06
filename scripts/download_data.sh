#!/usr/bin/env bash
# Download the M5 Forecasting (Accuracy) files from Kaggle into data/raw/.
# Needs a Kaggle API token (KAGGLE_API_TOKEN or ~/.kaggle/access_token)
# and the competition rules accepted on kaggle.com.
# kaggle.com is not reachable from the ganymede server; run this in Colab or locally.
# kaggle 2.2.4 has no --unzip option, so unzip separately.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p data/raw
kaggle competitions download m5-forecasting-accuracy -p data/raw
for z in data/raw/*.zip; do
  unzip -o "$z" -d data/raw && rm "$z"
done
ls -l data/raw
