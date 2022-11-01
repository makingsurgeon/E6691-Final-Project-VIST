# Imagenette

Imagenette is a subset of Imagenet with 10 distinct classes (tench, English springer, cassette player, chain saw, church, French horn, garbage truck, gas pump, golf ball, parachute). Altogether, it has 9369 training images and 4025 validation images. 


Also, it comes with a set of labels that ranges from 0\% incorrect to 50\% incorrect. In between, we have 1\%, 5\% and 25\% incorrect.

It was found out that pretrained vision transformers are fairly robust to incorrect labels and also few datapoints, with 98.1\% for all-correct labels and 97.9\% for 50\% correct labels evaluated on validation set.

According to the creator of this dataset, it serves as a small set that can be used to test whether a certain idea work, since Imagenet is too large.

Here is the link to some of the other models that was kept on record: https://github.com/fastai/imagenette/

To run the notebooks: for both Imagenette and Imagewoof, one needs to change the data location from XXXX.JPEG to XXXX.jpeg in order for it to function.
#### Transfer on Imagenette (metric: accuracy)
<img alt="Transfer on Imagenette result" src="./imagenette.png" width="600">
