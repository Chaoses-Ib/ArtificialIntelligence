# Autoencoders
[Wikipedia](https://en.wikipedia.org/wiki/Autoencoder.)

An **autoencoder** is a neural network that is trained to attempt to copy its input to its output. An autoencoder may be viewed as consisting of two parts:
- An encoder function $h=f(x)$
- A decoder function $r=g(h)$

Usually autoencoders are restricted in ways that allow them to copy only approximately, and to copy only input that resembles the training data. Because the model is forced to prioritize which aspects of the input should be copied, it often learns useful properties of the data.

Experimentally, deep autoencoders yield much better compression than corresponding shallow or linear autoencoders.

Traditionally, autoencoders were used for dimensionality reduction or feature learning. Recently, theoretical connections between autoencoders and latent variable models have brought autoencoders to the forefront of generative modeling.[^deeplearning]

## Undercomplete autoencoders
One way to obtain useful features from the autoencoder is to constrain $h$ to have a smaller dimension than $x$. An autoencoder whose code dimension is less than the input dimension is called **undercomplete**. Learning an undercomplete representation forces the autoencoder to capture the most salient features of the training data.

The learning process is described simply as minimizing a loss function
$$L(x,g(f(x)))$$

When the decoder is linear and $L$ is the mean squared error, an undercomplete autoencoder learns to span the same subspace as PCA. In this case, an autoencoder trained to perform the copying task has learned the principal subspace of the training data as a side effect.[^deeplearning]

## Regularized autoencoders
Rather than limiting the model capacity by keeping the encoder and decoder shallow and the code size small, regularized autoencoders use a loss function that encourages the model to have other properties besides the ability to copy its input to its output. These other properties include:
- Sparsity of the representation
- Smallness of the derivative of the representation
- Robustness to noise or to missing inputs

In addition to the methods described here, which are most naturally interpreted as regularized autoencoders, nearly any generative model with latent variables and equipped with an inference procedure (for computing latent representations given input) may be viewed as a particular form of autoencoder.[^deeplearning]

### Sparse autoencoders
A sparse autoencoder is simply an autoencoder whose training criterion involves a sparsity penalty $\Omega(h)$ on the code layer $h$, in addition to the reconstruction error:
$$L(x,g(f(x)))+\Omega(h)$$

Sparse autoencoders are typically used to learn features for another task, such as classification.[^deeplearning]

### Denoising autoencoders
Rather than adding a penalty $\Omega$ to the cost function, we can obtain an autoencoder that learns something useful by changing the reconstruction error term of the cost function.

A **denoising autoencoder** is an autoencoder that receives a corrupted data point as input and is trained to predict the original, uncorrupted data point as its output. A denosing autoencoder minimizes

$$L(x,g(f(\tilde{x})))$$

where $\tilde{x}$ is a copy of $x$ that have been corrupted by some form of noise. Denoising autoencoders must therefore undo this corruption rather than simply copying their input.[^deeplearning]

### Contractive autoencoders
Another strategy for regularizing an autoencoder is to use a penalty $\Omega$, as in sparse autoencoders,

$$L(x,g(f(x)))+\Omega(h,x)$$

but with a different form of $\Omega$:

$$\Omega(h,x)=\lambda\sum_i{||\nabla_xh_i||^2}$$

This forces the model to learn a function that does not change much when $x$ changes slightly.

This approach has theoretical connections to denoising autoencoders, manifold learning, and probabilistic modeling.[^deeplearning]


[^wiki]: [Autoencoder - Wikipedia](https://en.wikipedia.org/wiki/Autoencoder)
[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.