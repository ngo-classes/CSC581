#!/bin/bash

set -e

log_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}

apt update
apt install -y build-essential portaudio19-dev libgl1
apt clean

pip install jupyter numpy matplotlib pandas nltk scikit-learn ipykernel scipy pooch 
pip install opencv-python
pip install tensorflow tensorflow_hub tensorflow_datasets tensorflow-model-optimization pyaudio tensorflow_io 
pip install python_speech_features librosa seaborn

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh
mkdir -p /opt/workplace
