# Bootstrap Aggregating
[Wikipedia](https://en.wikipedia.org/wiki/Bootstrap_aggregating)

**Bootstrap aggregating (bagging)** is a technique for reducing generalization error by combining several models. The idea is to train several diﬀerent models separately, then have all the models vote on the output for test examples.

Bagging is an example of a general strategy in machine learning called model averaging. Techniques employing this strategy are known as ensemble methods. The reason that model averaging works is that diﬀerent models will usually not make all the same errors on the test set.

Diﬀerent ensemble methods construct the ensemble of models in diﬀerent ways. For example, each member of the ensemble could be formed by training a completely diﬀerent kind of model using a diﬀerent algorithm or objective function. Bagging is a method that allows the same kind of model, training algorithm and objective function to be reused several times.

Speciﬁcally, bagging involves constructing $k$ diﬀerent datasets. Each dataset has the same number of examples as the original dataset, but each dataset is constructed by sampling with replacement from the original dataset. This means that, with high probability, each dataset is missing some of the examples from the original dataset and contains several duplicate examples (on average around two–thirds of the examples from the original dataset are found in the resulting training set, if it has the same size as the original). Model $i$ is then trained on dataset $i$. The diﬀerences between which examples are included in each dataset result in diﬀerences between the trained models.

Neural networks reach a wide enough variety of solution points that they can often beneﬁt from model averaging even if all the models are trained on the same dataset. Diﬀerences in random initialization, in random selection of minibatches, in hyperparameters, or in outcomes of nondeterministic implementations of neural networks are often enough to cause diﬀerent members of the ensemble to make partially independent errors.

Model averaging is an extremely powerful and reliable method for reducing generalization error. Its use is usually discouraged when benchmarking algorithms for scientiﬁc papers, because any machine learning algorithm can beneﬁt substantially from model averaging at the price of increased computation and memory. For this reason, benchmark comparisons are usually made using a single model.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.