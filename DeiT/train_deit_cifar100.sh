#!/bin/bash
trap "exit" INT

# train deit_tiny on cifar100
python main.py --data-set CIFAR100 --data-path ./data --model deit_tiny_patch16_224  --batch-size 64 --output_dir out_tiny_cifar100 --epochs 300

# train deit_small on cifar100
python main.py --data-set CIFAR100 --data-path ./data --model deit_small_patch16_224  --batch-size 64 --output_dir out_small_cifar100 --epochs 300
