#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
install_dir="/workspace/stable-diffusion-webui-forge"  # 적절한 디렉토리 설정

# Name of the subdirectory
clone_dir="stable-diffusion-webui"  # 사용하지 않으니 주석 그대로 두셔도 됩니다.

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
export COMMANDLINE_ARGS="--api"  # 필요한 명령어를 추가

# python3 executable
python_cmd="python3"  # 시스템에 설치된 Python을 사용

# git executable
export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
venv_dir="venv"  # 가상 환경 디렉토리 지정

# script to launch to start the app
export LAUNCH_SCRIPT="launch.py"  # 실행할 스크립트 지정

# install command for torch
export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"

# Requirements file to use for stable-diffusion-webui
export REQS_FILE="requirements_versions.txt"

# Fixed git repos
export K_DIFFUSION_PACKAGE=""
export GFPGAN_PACKAGE=""

# Fixed git commits
export STABLE_DIFFUSION_COMMIT_HASH=""
export CODEFORMER_COMMIT_HASH=""
export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
export ACCELERATE="True"

# Uncomment to disable TCMalloc
export NO_TCMALLOC="True"

###########################################

# 실제로 실행할 명령어 추가 (예: 앱을 실행하는 명령)
cd $install_dir  # 설치된 디렉토리로 이동
$python_cmd $LAUNCH_SCRIPT  # Python으로 launch.py 실행
