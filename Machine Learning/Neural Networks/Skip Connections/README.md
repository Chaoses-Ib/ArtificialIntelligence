# Skip Connections
[Wikipedia](https://en.wikipedia.org/wiki/Residual_neural_network)

Linear paths or skip connections between layers reduce the length of the shortest path from the lower layer’s parameters to the output, and thus mitigate the vanishing gradient problem. A related idea to skip connections is adding extra copies of the output that are attached to the intermediate hidden layers of the network, as in GoogLeNet (Szegedy et al., 2014a) and deeply supervised nets (Lee et al., 2014). These “auxiliary heads” are trained to perform the same task as the primary output at the top of the network to ensure that the lower layers receive a large gradient. When training is complete, the auxiliary heads may be discarded. This is an alternative to the pretraining strategies. In this way, one can train jointly all the layers in a single phase but change the architecture, so that intermediate layers (especially the lower ones) can get some hints about what they should do, via a shorter path. These hints provide an error signal to lower layers.[^deeplearning]

[Skip Connections | All You Need to Know About Skip Connections](https://www.analyticsvidhya.com/blog/2021/08/all-you-need-to-know-about-skip-connections/)

## Residual Neural Networks
[^resnet]
[Wikipedia](https://en.wikipedia.org/wiki/Residual_neural_network)

[ResNet: The Basics and 3 ResNet Extensions](https://datagen.tech/guides/computer-vision/resnet/)

PyTorch:
- [Model Zoo -- ResNet-18 MNIST Digits Classifier with Data Parallelism](https://github.com/rasbt/deeplearning-models/blob/master/pytorch_ipynb/cnn/cnn-resnet18-mnist.ipynb)
- [Marcin Zabłocki blog | Using ResNet for MNIST in PyTorch 1.7](https://zablo.net/blog/post/pytorch-resnet-mnist-jupyter-notebook-2021/index.html)


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.
[^resnet]: He, Kaiming, Xiangyu Zhang, Shaoqing Ren, and Jian Sun. “Deep Residual Learning for Image Recognition.” In _2016 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)_, 770–78. Las Vegas, NV, USA: IEEE, 2016. [https://doi.org/10.1109/CVPR.2016.90](https://doi.org/10.1109/CVPR.2016.90).