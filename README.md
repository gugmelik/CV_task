## Requirements

[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)
[![Python 3.7](https://img.shields.io/badge/Python-3.7-3776AB)](https://www.python.org/downloads/release/python-360/)
[![TensorFlow 2.1](https://img.shields.io/badge/TensorFlow-2.1-FF6F00?logo=tensorflow)](https://github.com/tensorflow/tensorflow/releases/tag/v2.2.0)
[![Protobuf Compiler >= 3.0](https://img.shields.io/badge/ProtoBuf%20Compiler-%3E3.0-brightgreen)](https://grpc.io/docs/protoc-installation/#install-using-a-package-manager)

## Installation

Clone the repository.
```bash
git clone https://github.com/gugmelik/CV_task.git
```

Install the TensorFlow Object Detection API with Python Package

Clone the TensorFlow Models repository and proceed to the installation.

```bash
git submodule update --init
```

### Creating environment and running

```bash
chmod +x ./scripts/install_n_run.sh
./scripts/install_n_run.sh ./data/video.mp4
```

Video will be saved at data/out.mp4

