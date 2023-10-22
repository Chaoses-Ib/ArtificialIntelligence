# Semi-supervised Learning
[Wikipedia](https://en.wikipedia.org/wiki/Weak_supervision)

In the paradigm of **semi-supervised learning**, both unlabeled examples from $P(x)$ and labeled examples from $P(x, y)$ are used to estimate $P(y | x)$ or predict $y$ from $x$.

In the context of deep learning, semi-supervised learning usually refers to learning a representation $h=f(x)$ so that examples from the same class have similar representations. Examples that cluster tightly in the input space should be mapped to similar representations. A linear classifier in the new space may achieve better generalization in many cases. A long-standing variant of this approach is the application of principal components analysis as a preprocessing step before applying a classifier.[^deeplearning]

[Semi-Supervised Learning, Explained | AltexSoft](https://www.altexsoft.com/blog/semi-supervised-learning/)


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.