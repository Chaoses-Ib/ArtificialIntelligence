# Noise Injection
Injecting noise in the input to a neural network can also be seen as a form of data augmentation. For many classification and even some regression tasks, the task should still be possible to solve even if small random noise is added to the input. Neural networks prove not to be very robust to noise, however. One way to improve the robustness of neural networks is simply to train them with random noise applied to their inputs.

Noise injection also works when the noise is applied to the hidden units, which can be seen as doing dataset augmentation at multiple levels of abstraction. Dropout can be seen as a process of constructing new inputs by multiplying by noise.

Another way that noise has been used in the service of regularizing models is by adding it to the weights. This technique has been used primarily in the context of recurrent neural networks. This can be interpreted as a stochastic implementation of Bayesian inference over the weights

Noise applied to the weights can also be interpreted as equivalent (under some assumptions) to a more traditional form of regularization, encouraging stability of the function to be learned. This form of regularization encourages the parameters to go to regions of parameter space where small perturbations of the weights have a relatively small inﬂuence on the output.

Most datasets have some number of mistakes in the $y$ labels. It can be harmful to
maximize $\log{p(y | x)}$ when $y$ is a mistake. One way to prevent this is to explicitly model the noise on the labels. This assumption is easy to incorporate into the cost function analytically, rather than by explicitly drawing noise samples. For example, **label smoothing** regularizes a model based on a softmax with $k$ output values by replacing the hard $0$ and $1$ classification targets
with targets of $\epsilon\over k−1$ and $1-\epsilon$, respectively. Label smoothing has the advantage of preventing the pursuit of hard probabilities without discouraging correct classification.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.