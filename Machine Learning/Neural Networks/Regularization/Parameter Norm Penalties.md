# Parameter Norm Penalties
Many regularization approaches are based on limiting the capacity of models, such as neural networks, linear regression, or logistic regression, by adding a parameter norm penalty $\Omega(\theta)$ to the objective function $J$. We denote the regularized objective function by $\tilde{J}$:

$$\tilde J(\theta;X,y)=J(\theta;X,y)+a\Omega(\theta)$$

where $a\in [0,\infty)$ is a hyperparameter that weights the relative contribution of the
norm penalty term, $\Omega$, relative to the standard objective function $J$.

Diﬀerent choices for the parameter norm $\Omega$ can result in diﬀerent solutions being preferred.

Note that for neural networks, we typically choose to use a parameter norm penalty $\Omega$ that penalizes only the weights of the aﬃne transformation at each layer and leaves the biases unregularized. The biases typically require less data than the weights to ﬁt accurately. Each weight speciﬁes how two variables interact. Fitting the weight well requires observing both variables in a variety of conditions. Each bias controls only a single variable. This means that we do not induce too much variance by leaving the biases unregularized. Also, regularizing the bias parameters can introduce a signiﬁcant amount of underﬁtting.

In the context of neural networks, it is sometimes desirable to use a separate penalty with a diﬀerent α coeﬃcient for each layer of the network. Because it can be expensive to search for the correct value of multiple hyperparameters, it is still reasonable to use the same weight decay at all layers just to reduce the size of search space.[^deeplearning]

## $L^2$ parameter regularization
The **$L^2$ parameter norm penalty (weight decay, ridge regression, Tikhonov regularization)** is one of the simplest and most common kinds of parameter norm penalty. This regularization strategy drives the weights closer to the origin by adding a regularization term
$$\Omega={1\over 2}||w||^2_2$$
to the objective function.

We can gain some insight into the behavior of weight decay regularization by studying the gradient of the regularized objective function. To simplify the presentation, we assume no bias parameter, so $\theta$ is just $w$. Such a model has the following total objective function:

$$\tilde J(w;X,y)=J(w;X,y)+{a\over 2}w^T w$$

with the corresponding parameter gradient

$$\nabla_w \tilde J (w;X,y) = aw + \nabla_w J(w;X,y)$$

To take a single gradient step to update the weights, we perform this update:

$$\begin{align}
w\leftarrow &w-\epsilon(aw + \nabla_w J(w;X,y)) \\
           =& (1-\epsilon a)w-\epsilon\nabla_w J(w;X,y)
\end{align}$$

We can see that the addition of the weight decay term has modiﬁed the learning rule to multiplicatively shrink the weight vector by a constant factor on each step, just before performing the usual gradient update.[^deeplearning]

## $L^1$ regularization
$L^1$ regularization on the model parameter $w$ is deﬁned as

$$\Omega(\theta)=||w||_1=\sum_i{|w_i|}$$

In comparison to $L^2$ regularization, $L^1$ regularization results in a solution that is more sparse. Sparsity in this context refers to the fact that some parameters have an optimal value of zero.

The sparsity property induced by $L^1$ regularization has been used extensively as a feature selection mechanism. Feature selection simpliﬁes a machine learning problem by choosing which subset of the available features should be used.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.