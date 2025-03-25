#!/bin/bash

set -e

log_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}

conda install -y jupyter numpy matplotlib pandas nltk scikit-learn ipykernel opencv-python scipy pooch 
conda install -y tensorflow tensorflow_hub tensorflow_datasets tensorflow-model-optimization pyaudio tensorflow_io 
conda install -y python_speech_features librosa seaborn

mkdir -p /opt/workplace
