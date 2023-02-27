# [Softmax Function](https://en.wikipedia.org/wiki/Softmax_function)
The standard softmax function $\sigma$: $\mathbb{R}^K\to (0,1)^K$ is defined when $K\ge 1$ by the formula
$$\sigma(\mathbf z)_i = {e^{z_i} \over \sum_{j=1}^K e^{z_j}}$$
It applies the standard exponential function to each element $z_i$ of the input vector $\mathbf{z}$ and normalizes these values by dividing by the sum of all these exponentials; this normalization ensures that the sum of the components of the output vector $\sigma(\mathbf z)$ is $1$.

The term "softmax" derives from the amplifying effects of the exponential on any maxima in the input vector. For example, the standard softmax of $(1,2,8)$ is approximately $(0.001,0.002,0.997)$, which amounts to assigning almost all of the total unit weight in the result to the position of the vector's maximal element (of $8$).