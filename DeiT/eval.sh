#!/bin/bash

trap "exit" INT
# eval tiny model on ImageNet-1k
echo "====== TINY ======"
echo "Evaluate pretrained DeiT-tiny-16-224 model on ImageNet-1k:"
python main.py --eval --resume https://dl.fbaipublicfiles.com/deit/deit_tiny_patch16_224-a1311bcf.pth --model deit_tiny_patch16_224 --batch-size 128
echo "====== END ======"
echo

# eval small model on ImageNet-1k
echo "====== SMALL ======"
echo "Evaluate pretrained DeiT-small-16-224 model on ImageNet-1k:"
python main.py --eval --resume https://dl.fbaipublicfiles.com/deit/deit_small_patch16_224-cd65a155.pth --model deit_small_patch16_224 --batch-size 128
echo "====== END ======"
echo

# eval base model on ImageNet-1k
echo "====== BASE ======"
echo "Evaluate pretrained DeiT-base-16-224 model on ImageNet-1k:"
python main.py --eval --resume https://dl.fbaipublicfiles.com/deit/deit_base_patch16_224-b5f2ef4d.pth --batch-size 128
echo "====== END ======"
echo