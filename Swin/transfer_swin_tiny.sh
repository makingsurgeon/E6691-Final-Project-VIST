#!/bin/bash
trap "exit" INT

# finetuning swin-tiny on cifar-10
python finetuning.py --model swin_tiny_patch4_window7_224 --data-path ./data --data-set CIFAR10 --output_dir finetuning_swin_tiny_cifar10 --epoch 50

# finetuning swin-tiny on cifar-100
python finetuning.py --model swin_tiny_patch4_window7_224 --data-path ./data --data-set CIFAR100 --output_dir finetuning_swin_tiny_cifar100 --epoch 50

# finetuning swin-small on cifar-10
python finetuning.py --model swin_small_patch4_window7_224 --data-path ./data --data-set CIFAR10 --output_dir finetuning_swin_small_cifar10 --epoch 50

# finetuning swin-small on cifar-100
python finetuning.py --model swin_small_patch4_window7_224 --data-path ./data --data-set CIFAR100 --output_dir finetuning_swin_small_cifar100 --epoch 50

# finetuning swin-base on cifar-10
python finetuning.py --model swin_base_patch4_window7_224 --data-path ./data --data-set CIFAR10 --output_dir finetuning_swin_base_cifar10 --epoch 50

# finetuning swin-base on cifar-100
python finetuning.py --model swin_base_patch4_window7_224 --data-path ./data --data-set CIFAR100 --output_dir finetuning_swin_base_cifar100 --epoch 50

