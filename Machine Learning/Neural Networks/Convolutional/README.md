# Convolutional Neural Networks
[Wikipedia](https://en.wikipedia.org/wiki/Convolutional_neural_network)

**Convolutional neural networks** are simply neural networks that use convolution in place of general matrix multiplication in at least one of their layers.

We can imagine a convolutional net as being similar to a fully connected net, but with an **inﬁnitely strong prior** over its weights. This inﬁnitely strong prior says that the weights for one hidden unit must be identical to the weights of its neighbor but shifted in space. The prior also says that the weights must be zero, except for in the small, spatially contiguous receptive ﬁeld assigned to that hidden unit. Overall, we can think of the use of convolution as introducing an inﬁnitely strong prior probability distribution over the parameters of a layer. This prior says that the function the layer should learn contains only local interactions and is equivariant to translation. Likewise, the use of pooling is an inﬁnitely strong prior that each unit should be invariant to small translations.

CNN 适用于具有 grid-like topology 的数据，例如 time-series data 和 image data。

Convolution leverages three important ideas that can help improve a machine learning system[^deeplearning]:
- Sparse interactions (sparse connectivity, sparse weights)

  This means that we need to store fewer parameters, which both reduces the memory requirements of the model and improves its statistical eﬃciency. It also means that computing the output requires fewer operations.

- Parameter sharing

  Parameter sharing refers to using the same parameter for more than one function in a model. In a convolutional neural net, each member of the kernel is used at every position of the input (except perhaps some of the boundary pixels, depending on the design decisions regarding the boundary). Convolution is thus dramatically more eﬃcient than dense matrix multiplication in terms of the memory requirements and statistical eﬃciency.

- Equivariant representations

  To say a function is equivariant means that if the input changes, the output changes in the same way. Speciﬁcally, a function $f(x)$ is equivariant to a function g if $f(g(x)) = g(f(x))$. In the case of convolution, if we let $g$ be any function that translates the input, that is, shifts it, then the convolution function is equivariant to $g$.

  For example, when processing images, it is useful to detect edges in the ﬁrst layer of a convolutional network. The same edges appear more or less everywhere in the image, so it is practical to share parameters across the entire image.  In some cases, we may not wish to share parameters across the entire image. For example, if we are processing images that are cropped to be centered on an individual’s face, we probably want to extract diﬀerent features at diﬀerent locations—the part of the network processing the top of the face needs to look for eyebrows, while the part of the network processing the bottom of the face needs to look for a chin.

  Convolution is not naturally equivariant to some other transformations, such as changes in the scale or rotation of an image. Other mechanisms are necessary for handling these kinds of transformations.

Moreover, convolution provides a means for working with inputs of variable size.

We should only compare convolutional models to other convolutional models in benchmarks of statistical learning performance. Models that do not use convolution would be able to learn even if we permuted all the pixels in the image.

## Convolution
Given $x(t)$, the convolution operation is
$$s(t)=\int {x(a)w(t-a)da}$$
which is typically denoted with an asterisk:
$$s(t)=(x\ast w)(t)$$
where $x$ is the **input**, $w$ is the **kernel**, a weighting function, $s$ is the **output (feature map)**.

Convolutions can be used over more than one axis at a time:

$$S(i,j)=(I\ast K)(i,j)=\sum_m\sum_n I(m,n)K(i-m,j-n)$$

Convolution is commutative, meaning we can equivalently write

$$S(i,j)=(K\ast I)(i,j)=\sum_m\sum_n I(i-m,j-n)K(m,n)$$

The commutative property of convolution arises because we have **ﬂipped** the kernel relative to the input, in the sense that as $m$ increases, the index into the input increases, but the index into the kernel decreases. While the commutative property is useful for writing proofs, it is not usually an important property of a neural network implementation. Instead, many neural network libraries implement a related function called the **cross-correlation (often called convolution)**, which is the same as convolution but without ﬂipping the kernel:

$$S(i,j)=(I\ast K)(i,j)=\sum_m\sum_n I(i+m,j+n)K(m,n)$$

Discrete convolution can be viewed as multiplication by a matrix, but the matrix has several entries constrained to be equal to other entries. For example, for univariate discrete convolution, each row of the matrix is constrained to be equal to the row above shifted by one element. This is known as a **Toeplitz matrix**. In two dimensions, a **doubly block circulant matrix** corresponds to convolution.[^deeplearning]

$$N_\text{output}={N_\text{inputs} + 2N_\text{padding} - N_\text{kernel} \over \text{stride} } + 1$$

## Pooling
```mermaid
flowchart BT
    input[Input to layers]
    --> conv[Convolution layer: Affine transform]
    --> detector[Detector layer: Nonlinearity]
    --> pooling[Pooling layer]
    --> next[Next layer]
```

A **pooling** function replaces the output of the net at a certain location with a summary statistic of the nearby outputs. Pooling helps to make the representation approximately invariant to small translations of the input. Invariance to local translation can be a useful property if we care more about whether some feature is present than exactly where it is.

The use of pooling can be viewed as adding an inﬁnitely strong prior that the function the layer learns must be invariant to small translations. When this assumption is correct, it can greatly improve the statistical eﬃciency of the network.

For many tasks, pooling is essential for handling inputs of varying size. For example, if we want to classify images of variable size, the input to the classiﬁcation layer must have a ﬁxed size. This is usually accomplished by varying the size of an oﬀset between pooling regions so that the classiﬁcation layer always receives the same number of summary statistics regardless of the input size.

Pooling 和 image scaling 都可以用于将图像转换到指定大小，两者在一定程度上是等价的。

[How to Develop a CNN for MNIST Handwritten Digit Classification - MachineLearningMastery.com](https://machinelearningmastery.com/how-to-develop-a-convolutional-neural-network-from-scratch-for-mnist-handwritten-digit-classification/)

## LeNet
[^lenet]
[Wikipedia](https://en.wikipedia.org/wiki/LeNet)

LeNet-5:
```mermaid
flowchart TD
    input["Image: 28×28×1 (channel)"]
    --> conv1["Convolution with 6 5×5 kernel+2 padding: 28×28×6"]:::conv
    --sigmoid--> pool1["Pool with 2×2 average kernel+2 stride: 14×14×6"]:::pool
    --> conv2["Convolution with 16 5×5 kernel (no pad): 10×10×16"]:::conv
    --sigmoid--> pool2["Pool with 2×2 average kernel+2 stride: 5×5×16"]:::pool
    --flatten--> dense1["Dense: 120 fully connected neurons"]:::dense
    --sigmoid--> dense2["Dense: 84 fully connected neurons"]:::dense
    --sigmoid--> dense3["Dense: 10 fully connected neurons"]:::dense
    --> output["Output: 1 of 10 classes"]

    classDef conv fill:#8aeff0,color:#000;
    classDef pool fill:#f7cffc,color:#000;
    classDef dense fill:#fcef4f,color:#000;
```

PyTorch:
- [Writing LeNet5 from Scratch in PyTorch](https://blog.paperspace.com/writing-lenet5-from-scratch-in-python/)
- [7.6. Convolutional Neural Networks (LeNet) — Dive into Deep Learning 1.0.0-beta0 documentation](https://d2l.ai/chapter_convolutional-neural-networks/lenet.html)
- [How My LeNet Achieves 99% Accuracy | Cuda Chen’s Blog](https://cuda-chen.github.io/deep%20learning/2021/09/23/lenet-99.html)


[^lenet]: Lecun, Y., L. Bottou, Y. Bengio, and P. Haffner. “Gradient-Based Learning Applied to Document Recognition.” _Proceedings of the IEEE_ 86, no. 11 (November 1998): 2278–2324. [https://doi.org/10.1109/5.726791](https://doi.org/10.1109/5.726791).

## AlexNet
[^alexnet]
[Wikipedia](https://en.wikipedia.org/wiki/AlexNet)

```mermaid
flowchart RL
    subgraph LeNet
    direction TB
    input["Image: 28×28×1 (channel)"]
    --> conv1["Convolution with 6 5×5 kernel+2 padding: 28×28×6"]:::conv
    --sigmoid--> pool1["Pool with 2×2 average kernel+2 stride: 14×14×6"]:::pool
    --> conv2["Convolution with 16 5×5 kernel (no pad): 10×10×16"]:::conv
    --sigmoid--> pool2["Pool with 2×2 average kernel+2 stride: 5×5×16"]:::pool
    --flatten--> dense1["Dense: 120 fully connected neurons"]:::dense
    --sigmoid--> dense2["Dense: 84 fully connected neurons"]:::dense
    --sigmoid--> dense3["Dense: 10 fully connected neurons"]:::dense
    --> output["Output: 1 of 10 classes"]
    end

    subgraph AlexNet
    direction TB
    Ainput["Image: 224×224×3 (channel)"]
    --> Aconv1["Convolution with 11×11 kernel+4 stride: 54×54×96"]:::conv
    --ReLu--> Apool1["Pool with 3×3 max. kernel+2 stride: 26×26×96"]:::pool
    --> Aconv2["Convolution with 5×5 kernel+2 pad: 26×26×256"]:::conv
    --ReLu--> Apool2["Pool with 3×3 max. kernel+2 stride: 12×12×256"]:::pool
    --> Aconv3["Convolution with 3×3 kernel+1 pad: 12×12×384"]:::conv
    --ReLu--> Aconv4["Convolution with 3×3 kernel+1 pad: 12×12×384"]:::conv
    --ReLu--> Aconv5["Convolution with 3×3 kernel+1 pad: 12×12×256"]:::conv
    --ReLu--> Apool3["Pool with 3×3 max. kernel+2 stride: 5×5×256"]:::pool
    --flatten--> Adense1["Dense: 4096 fully connected neurons"]:::dense
    --sigmoid--> Adense2["Dense: 4096 fully connected neurons"]:::dense
    --sigmoid--> Adense3["Dense: 1000 fully connected neurons"]:::dense
    --> Aoutput["Output: 1 of 1000 classes"]
    end

    LeNet --> AlexNet

    classDef conv fill:#8aeff0,color:#000;
    classDef pool fill:#f7cffc,color:#000;
    classDef dense fill:#fcef4f,color:#000;
```

PyTorch:
- [Image-Recognition-on-MNIST-dataset/AlexNet.ipynb](https://github.com/l5shi/Image-Recognition-on-MNIST-dataset/blob/master/AlexNet.ipynb)


[^alexnet]: Krizhevsky, Alex, Ilya Sutskever, and Geoffrey E Hinton. “ImageNet Classification with Deep Convolutional Neural Networks.” In _Advances in Neural Information Processing Systems_, Vol. 25. Curran Associates, Inc., 2012. [https://proceedings.neurips.cc/paper_files/paper/2012/hash/c399862d3b9d6b76c8436e924a68c45b-Abstract.html](https://proceedings.neurips.cc/paper_files/paper/2012/hash/c399862d3b9d6b76c8436e924a68c45b-Abstract.html).


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.