# Optimization
Optimization algorithms used for training of deep models diﬀer from traditional optimization algorithms in several ways:
- Machine learning usually acts indirectly. In most machine learning scenarios, we care about some performance measure $P$, that is deﬁned with respect to the test set and may also be intractable. We therefore optimize $P$ only indirectly. We reduce a diﬀerent cost function $J(\theta)$ in the hope that doing so will improve $P$. This is in contrast to pure optimization, where minimizing $J$ is a goal in and of itself.
- Optimization algorithms for training deep models also typically include some specialization on the speciﬁc structure of machine learning objective functions.

Typically, the cost function can be written as an average over the training set, such as
$$J(\theta)=E_{(x,y)\sim \hat{p}_{data}} L(f(x;\theta),y)$$
where $L$ is the per-example loss function, $f(x;\theta)$ is the predicted output when the input is $x$, and $\hat{p}_{data}$ is the empirical distribution.

We would usually prefer to minimize the corresponding objective function where the expectation is taken across the data-generating distribution $p_{data}$ rather than just
over the ﬁnite training set[^deeplearning]:
$$J^*(\theta)=E_{(x,y)\sim p_{data}} L(f(x;\theta),y)$$

## Empirical risk minimization
The goal of a machine learning algorithm is to reduce the expected generalization error. This quantity is known as the **risk**. We emphasize here that the expectation is taken over the true underlying distribution $p_{data}$. If we knew the true distribution $p_{data}(x,y)$, risk minimization would be an optimization task solvable by an optimization algorithm. When we do not know $p_{data}(x,y)$ but only have a training set of samples, however, we have a machine learning problem.

The simplest way to convert a machine learning problem back into an optimization problem is to minimize the expected loss on the training set. This means replacing the true distribution $p(x, y)$ with the empirical distribution $\hat{p}(x, y)$ deﬁned by the training set. We now minimize the **empirical risk**
$$J(\theta)=E_{(x,y)\sim \hat{p}_{data}} L(f(x;\theta),y)$$

The training process based on minimizing this average training error is known as empirical risk minimization. In this setting, machine learning is still very similar to straightforward optimization. Rather than optimizing the risk directly, we optimize the empirical risk and hope that the risk decreases signiﬁcantly as well. A variety of theoretical results establish conditions under which the true risk can be expected to decrease by various amounts.

Nonetheless, empirical risk minimization is prone to overﬁtting. Models with high capacity can simply memorize the training set. In many cases, empirical risk minimization is not really feasible. The most eﬀective modern optimization algorithms are based on gradient descent, but many useful loss functions, such as 0-1 loss, have no useful derivatives. These two problems mean that, in the context of deep learning, we rarely use empirical risk minimization. Instead, we must use a slightly diﬀerent approach, in which the quantity that we actually optimize is even more diﬀerent from the quantity that we truly want to optimize.[^deeplearning]

## Surrogate loss functions
Sometimes, the loss function we actually care about is not one that can be optimized eﬃciently. In such situations, one typically optimizes a **surrogate loss function** instead, which acts as a proxy but has advantages. For example, the negative log-likelihood of the correct class is typically used as a surrogate for the 0-1 loss. The negative log-likelihood allows the model to estimate the conditional probability of the classes, given the input, and if the model can do that well, then it can pick the classes that yield the least classiﬁcation error in expectation.

A very important diﬀerence between optimization in general and optimization as we use it for training algorithms is that training algorithms do not usually halt at a local minimum. Instead, a machine learning algorithm usually minimizes a surrogate loss function but halts when a convergence criterion based on early stopping is satisﬁed. Typically the early stopping criterion is based on the true underlying loss function, such as 0-1 loss measured on a validation set, and is designed to cause the algorithm to halt whenever overﬁtting begins to occur. Training often halts while the surrogate loss function still has large derivatives, which is very diﬀerent from the pure optimization setting, where an optimization algorithm is considered to have converged when the gradient becomes very small.[^deeplearning]

## Designing models to aid optimization
To improve optimization, the best strategy is not always to improve the optimization algorithm. Instead, many improvements in the optimization of deep models have come from designing the models to be easier to optimize.

In practice, it is more important to choose a model family that is easy to optimize than to use a powerful optimization algorithm. Most of the advances in neural network learning over the past thirty years have been obtained by changing the model family rather than changing the optimization procedure.

Speciﬁcally, modern neural networks reﬂect a design choice to use linear transformations between layers and activation functions that are diﬀerentiable almost everywhere, with signiﬁcant slope in large portions of their domain. In particular, model innovations like the LSTM, rectiﬁed linear units and maxout units have all moved toward using more linear functions than previous models like deep networks based on sigmoidal units. These models have nice properties that make optimization easier. The gradient ﬂows through many layers provided that the Jacobian of the linear transformation has reasonable singular values. Moreover, linear functions consistently increase in a single direction, so even if the model’s output is very far from correct, it is clear simply from computing the gradient which direction its output should move to reduce the loss function. In other words, modern neural nets have been designed so that their local gradient information corresponds reasonably well to moving toward a distant solution.

Other model design strategies can help to make optimization easier. For example, linear paths or skip connections between layers reduce the length of the shortest path from the lower layer’s parameters to the output, and thus mitigate the vanishing gradient problem. A related idea to skip connections is adding extra copies of the output that are attached to the intermediate hidden layers of the network, as in GoogLeNet (Szegedy et al., 2014a) and deeply supervised nets (Lee et al., 2014). These “auxiliary heads” are trained to perform the same task as the primary output at the top of the network to ensure that the lower layers receive a large gradient. When training is complete, the auxiliary heads may be discarded. This is an alternative to the pretraining strategies. In this way, one can train jointly all the layers in a single phase but change the architecture, so that intermediate layers (especially the lower ones) can get some hints about what they should do, via a shorter path. These hints provide an error signal to lower layers.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.