#!/usr/bin/env bash
# Download the M5 Forecasting (Accuracy) files from Kaggle into data/raw/.
# Needs a Kaggle API token (KAGGLE_API_TOKEN or ~/.kaggle/access_token)
# and the competition rules accepted on kaggle.com.
# Note: kaggle.com is not reachable from the ganymede server; run this in Colab or locally.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p data/raw
kaggle competitions download m5-forecasting-accuracy -p data/raw --unzip
ls -lh data/raw
