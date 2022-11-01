#!/bin/bash
trap "exit" INT

# train deit_small on ImageNet-1k
python main.py --data-set IMGNET --data-path ./data --model deit_small_patch16_224  --batch-size 64 --output_dir out_tiny_cifar100 --epochs 100