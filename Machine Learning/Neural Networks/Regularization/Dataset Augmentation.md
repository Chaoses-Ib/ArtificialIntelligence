# Dataset Augmentation
[Wikipedia](https://en.wikipedia.org/wiki/Data_augmentation)

The best way to make a machine learning model generalize better is to train it on more data. Of course, in practice, the amount of data we have is limited. One way to get around this problem is to create fake data and add it to the training set.

This approach is easiest for classiﬁcation. A classiﬁer needs to take a complicated, high-dimensional input $x$ and summarize it with a single category identity $y$. This means that the main task facing a classiﬁer is to be invariant to a wide variety of transformations. We can generate new $(x, y)$ pairs easily just by transforming the $x$ inputs in our training set. However, one must be careful not to apply transformations that would change the correct class.

Dataset augmentation has been a particularly eﬀective technique for a speciﬁc classiﬁcation problem: object recognition. Operations like translating the training images a few pixels in each direction can often greatly improve generalization, even if the model has already been designed to be partially translation invariant by using the convolution and pooling techniques. Many other operations, such as rotating the image or scaling the image, have also proved quite eﬀective.

Dataset augmentation is eﬀective for speech recognition tasks as well.

This approach is not as readily applicable to many other tasks. For example, it is diﬃcult to generate new fake data for a density estimation task unless we have already solved the density estimation problem.

When comparing machine learning benchmark results, taking the eﬀect of dataset augmentation into account is important. Often, hand-designed dataset augmentation schemes can dramatically reduce the generalization error of a machine learning technique. To compare the performance of one machine learning algorithm to another, it is necessary to perform controlled experiments.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.