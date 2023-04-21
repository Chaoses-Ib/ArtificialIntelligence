# Convolutional Neural Networks
**Convolutional neural networks** are simply neural networks that use convolution in place of general matrix multiplication in at least one of their layers.[^deeplearning]

CNN 适用于具有 grid-like topology 的数据，例如 time-series data 和 image data。[^deeplearning]

## Convolution
Given $x(t)$, the conlution operation is
$$s(t)=\int {x(a)w(t-a)da}$$
which is typically denoted with an asterisk:
$$s(t)=(x\ast w)(t)$$


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.