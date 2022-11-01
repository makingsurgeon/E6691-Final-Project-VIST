#!/bin/bash

trap "exit" INT
IMGNET_PATH='../ImageNet-1k/ILSVRC/Data/CLS-LOC'

# eval swin-tiny-224 model on ImageNet-1k
python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --eval --cfg configs/swin_tiny_patch4_window7_224.yaml --resume ./cache/swin_tiny_patch4_window7_224.pth --data-path $IMGNET_PATH

# eval swin-small-224 model on ImageNet-1k
python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --eval --cfg configs/swin_small_patch4_window7_224.yaml --resume ./cache/swin_small_patch4_window7_224.pth --data-path $IMGNET_PATH

# eval swin-base-224 model on ImageNet-1k
python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --eval --cfg configs/swin_base_patch4_window7_224.yaml --resume ./cache/swin_base_patch4_window7_224.pth --data-path $IMGNET_PATH

# eval swin-base-384 model on ImageNet-1k
python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --eval --cfg configs/swin_base_patch4_window12_384_finetune.yaml --resume ./cache/swin_base_patch4_window12_384.pth --data-path $IMGNET_PATH

# eval swin-base-224-22k model on ImageNet-1k
python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --eval --cfg configs/swin_base_patch4_window7_224_22k.yaml --resume ./cache/swin_base_patch4_window7_224_22k.pth --data-path $IMGNET_PATH

