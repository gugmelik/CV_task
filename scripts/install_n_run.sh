#!/usr/bin/env bash
env_name="venv"

if [ ! -d $env_name ]
then
  echo "Have not found existing $env_name, creating a new one"
  pip install virtualenv
  virtualenv --python=python3.7 $env_name
  . ./$env_name/bin/activate && echo "successfully activated $env_name python is $(which python)"
  cd models/research
  # Compile protos.
  apt install -y protobuf-compiler
  protoc object_detection/protos/*.proto --python_out=.
  # Install TensorFlow Object Detection API.
  cp object_detection/packages/tf2/setup.py .
  python -m pip install --use-feature=2020-resolver .
  cd ../..
  
fi


. ./$env_name/bin/activate
python src/detect.py $1
