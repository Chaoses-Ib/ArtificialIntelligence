# [Feed-forward Neural Networks](https://en.wikipedia.org/wiki/Feedforward_neural_network)
Function:
$$z_k=h(\sum_j {w_{kj} z_j})$$
Biases can be included in this sum by introducing an extra unit, or input, with activation fixed at $1$. We therefore do not need to deal with biases explicitly.[^prml]

## Error backpropagation
$$E(\mathbf w)=\sum_{n=1}^N E_n(\mathbf{w})$$

The derivative of $E_n$ with respect to a weight $w_{ji}$:

$$
{\partial E_n \over \partial w_{ji}}
= {\partial E_n \over \partial a_j} {\partial a_j \over \partial w_{ji}}
$$
where
$$a_j=\sum_i w_{ji} z_i$$

Let
$$\delta_j = {\partial E_n \over \partial a_j}$$
And because
$${\partial a_j \over \partial w_{ji}}=z_i$$
Therefore
$${\partial E_n \over \partial w_{ji}} = \delta_j z_i$$

Thus, in order to evaluate the derivatives, we need only to calculate the value of $\delta_j$ for each hidden and output unit in the network.

For the output units, we have
$$\delta_k=y_k-t_k$$
Then
$$\delta_j = {\partial E_n \over \partial a_j} = \sum_k {\partial E_n \over \partial a_k} {\partial a_k \over \partial a_j}$$
The backpropagation formula:
$$\delta_j = h'(a_j) \sum_k w_{kj} \delta_k$$
Therefore
$${\partial E_n \over \partial w_{ji}} = h'(a_j) z_i \sum_k w_{kj} \delta_k$$

[^prml]: Pattern Recognition and Machine Learning