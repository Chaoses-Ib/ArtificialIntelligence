# Batch Normalization
[Wikipedia](https://en.wikipedia.org/wiki/Batch_normalization)

Very deep models involve the composition of several functions, or layers. The gradient tells how to update each parameter, under the assumption that the other layers do not change. In practice, we update all the layers simultaneously. When we make the update, unexpected results can happen because many functions composed together are changed simultaneously, using updates that were computed under the assumption that the other functions remain constant.

Batch normalization provides an elegant way of reparametrizing almost any deep network. The reparametrization signiﬁcantly reduces the problem of coordinating updates across many layers. Batch normalization can be applied to any input or hidden layer in a network. Let $H$ be a minibatch of activations of the layer to normalize, arranged as a design matrix, with the activations for each example appearing in a row of the matrix. To normalize $H$, we replace it with

$$H'={H-\mu \over \sigma}$$

where $\mu$ is a vector containing the mean of each unit and $\sigma$ is a vector containing the standard deviation of each unit. The arithmetic here is based on broadcasting the vector $\mu$ and the vector $\sigma$ to be applied to every row of the matrix $H$. Within each row, the arithmetic is element-wise, so $H_{i,j}$ is normalized by subtracting $\mu_j$ and dividing by $\sigma_j$. The rest of the network then operates on $H'$ in exactly the same way that the original network operated on $H$.

Crucially, we back-propagate through these operations for computing the mean and the standard deviation, and for applying them to normalize $H$. This means that the gradient will never propose an operation that acts simply to increase the standard deviation or mean of $h_i$; the normalization operations remove the eﬀect of such an action and zero out its component in the gradient. This was a major innovation of the batch normalization approach. Previous approaches had involved adding penalties to the cost function to encourage units to have normalized activation statistics or involved intervening to renormalize unit statistics after each gradient descent step. The former approach usually resulted in imperfect normalization and the latter usually resulted in signiﬁcant wasted time, as the learning algorithm repeatedly proposed changing the mean and variance, and the normalization step repeatedly undid this change. Batch normalization reparametrizes the model to make some units always be standardized by deﬁnition, deftly sidestepping both problems.

In a deep neural network with nonlinear activation functions, the lower layers can perform nonlinear transformations of the data, so they remain useful. Batch normalization acts to standardize only the mean and variance of each unit in order to stabilize learning, but it allows the relationships between units and the nonlinear statistics of a single unit to change.

Because the ﬁnal layer of the network is able to learn a linear transformation, we may actually wish to remove all linear relationships between units within a layer. Unfortunately, eliminating all linear interactions is much more expensive than standardizing the mean and standard deviation of each individual unit, and so far batch normalization remains the most practical approach.

Normalizing the mean and standard deviation of a unit can reduce the expressive power of the neural network containing that unit. To maintain the expressive power of the network, it is common to replace the batch of hidden unit activations $H$ with $\gamma H′ + \beta$ rather than simply the normalized $H'$. The variables $\gamma$ and $\beta$ are learned parameters that allow the new variable to have any mean and standard deviation. In the old parametrization, the mean of $H$ was determined by a complicated interaction between the parameters in the layers below $H$. In the new parametrization, the mean of $\gamma H′ + \beta$ is determined solely by $\beta$. The new parametrization is much easier to learn with gradient descent.

The primary purpose of batch normalization is to improve optimization, but the noise can have a regularizing eﬀect, and sometimes makes dropout unnecessary.

In convolutional networks, it is important to apply the same normalizing $\mu$ and $\sigma$ at every spatial location within a feature map, so that the statistics of the feature map remain the same regardless of spatial location.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.