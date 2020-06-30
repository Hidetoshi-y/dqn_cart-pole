#!/bin/bash

if type nvidia-smi >/dev/null 2>&1 && [ x"$(nvidia-smi -L)" != x ]; then
    pip install tensorflow-gpu==1.13.1 || exit 1
else
    pip install tensorflow==1.13.1 || exit 1
fi


pip install gym==0.13.1 || exit 1
pip install keras==2.2.4 || exit 1
pip install keras-rl==0.4.2 || exit 1
pip install gym[atari]==0.13.1 || exit 1

#pip install tensorflow-gpu==1.13.1 || exit 1
