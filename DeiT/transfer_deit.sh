#!/bin/bash
trap "exit" INT

# finetuning deit-tiny on cifar-10
python finetuning.py --model deit_tiny_patch16_224 --data-path ./data --data-set CIFAR10 --output_dir finetuning_deit_tiny_cifar10 --epoch 50

# finetuning deit-small on cifar-10
python finetuning.py --model deit_small_patch16_224 --data-path ./data --data-set CIFAR10 --output_dir finetuning_deit_small_cifar10 --epoch 50

# finetuning deit-base on cifar-10
python finetuning.py --model deit_base_patch16_224 --data-path ./data --data-set CIFAR10 --output_dir finetuning_deit_base_cifar10 --epoch 50

# finetuning deit-tiny on cifar-100
python finetuning.py --model deit_tiny_patch16_224 --data-path ./data --data-set CIFAR100 --output_dir finetuning_deit_tiny_cifar100 --epoch 50

# finetuning deit-small on cifar-100
python finetuning.py --model deit_small_patch16_224 --data-path ./data --data-set CIFAR100 --output_dir finetuning_deit_small_cifar100 --epoch 50

# finetuning deit-base on cifar-100
python finetuning.py --model deit_base_patch16_224 --data-path ./data --data-set CIFAR100 --output_dir finetuning_deit_base_cifar100 --epoch 50