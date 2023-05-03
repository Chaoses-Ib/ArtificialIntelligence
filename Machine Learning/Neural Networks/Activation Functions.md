# Activation Functions
In modern neural networks, the default recommendation is to use the rectiﬁed linear unit.[^deeplearning]

## [→Logistic function](https://github.com/Chaoses-Ib/Mathematics/blob/main/Analysis/Functions/Logistic%20Function.md)
$$f(x)={L \over 1+e^{-k}(x-x_0)}$$

Sigmoid:
$$\sigma(x)={1\over 1+e^{-x}}$$

> The sigmoid function saturates (i.e., produces extreme valued outputs) very quickly and for a majority of the inputs. This can become a problem because it can lead to the gradients becoming either zero or diverging to an overflowing floating-point value. These phenomena are also known as **vanishing gradient problem** and **exploding gradient problem**, respectively. As a consequence, it is rare to see sigmoid units used in neural networks other than at the output, where the squashing property allows one to interpret outputs as probabilities.[^nlppytorch]

## Tanh function
[Wikipedia](https://en.wikipedia.org/wiki/Hyperbolic_functions)

$$\text{tanh}(x)={e^x-e^{-x} \over e^x+e^{-x}}$$

![](https://upload.wikimedia.org/wikipedia/commons/7/76/Sinh_cosh_tanh.svg)

## Rectified linear units
**Rectified linear units (ReLU)** use the activation function

$$f(x)=\max(0,x)$$

> This is arguably the most important of the activation functions. In fact, one could venture as far as to say that many of the recent innovations in deep learning would’ve been impossible without the use of ReLU.[^nlppytorch]

![](https://upload.wikimedia.org/wikipedia/commons/4/42/ReLU_and_GELU.svg)

The clipping effect of ReLU that helps with the vanishing gradient problem can also become an issue, where over time certain outputs in the network can simply become zero and never revive again. This is called the “dying ReLU” problem. To mitigate that effect, variants such as the **Leaky ReLU** and **Parametric ReLU (PReLU)** activaion functions have proposed, where the leak coefficient $a$ is a learned parameter.[^nlppytorch]

$$f(x)=\max(x,ax)$$

## Softmax function
[Wikipedia](https://en.wikipedia.org/wiki/Softmax_function)

The standard softmax function $\sigma$: $\mathbb{R}^K\to (0,1)^K$ is defined when $K\ge 1$ by the formula

$$\sigma(\mathbf z)_i = {e^{z_i} \over \sum_{j=1}^K e^{z_j}}$$

It applies the standard exponential function to each element $z_i$ of the input vector $\mathbf{z}$ and normalizes these values by dividing by the sum of all these exponentials; this normalization ensures that the sum of the components of the output vector $\sigma(\mathbf z)$ is $1$.

The term "softmax" derives from the amplifying effects of the exponential on any maxima in the input vector. For example, the standard softmax of $(1,2,8)$ is approximately $(0.001,0.002,0.997)$, which amounts to assigning almost all of the total unit weight in the result to the position of the vector's maximal element (of $8$).


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.
[^nlppytorch]: Natural Language Processing with
PyTorch by Delip Rao and Brian McMahan (O’Reilly). Copyright 2019, Delip Rao
and Brian McMahan, 978-1-491-97823-8.