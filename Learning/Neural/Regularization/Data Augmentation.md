# Data Augmentation
[Wikipedia](https://en.wikipedia.org/wiki/Data_augmentation)

The best way to make a machine learning model generalize better is to train it on more data. Of course, in practice, the amount of data we have is limited. One way to get around this problem is to create fake data and add it to the training set.

This approach is easiest for classification. A classifier needs to take a complicated, high-dimensional input $x$ and summarize it with a single category identity $y$. This means that the main task facing a classifier is to be invariant to a wide variety of transformations. We can generate new $(x, y)$ pairs easily just by transforming the $x$ inputs in our training set. However, one must be careful not to apply transformations that would change the correct class.

Dataset augmentation has been a particularly effective technique for a specific classification problem: object recognition. Operations like translating the training images a few pixels in each direction can often greatly improve generalization, even if the model has already been designed to be partially translation invariant by using the convolution and pooling techniques. Many other operations, such as rotating the image or scaling the image, have also proved quite effective.

Dataset augmentation is effective for speech recognition tasks as well.

This approach is not as readily applicable to many other tasks. For example, it is difficult to generate new fake data for a density estimation task unless we have already solved the density estimation problem.

When comparing machine learning benchmark results, taking the effect of dataset augmentation into account is important. Often, hand-designed dataset augmentation schemes can dramatically reduce the generalization error of a machine learning technique. To compare the performance of one machine learning algorithm to another, it is necessary to perform controlled experiments.[^deeplearning]

数据增强的本质是通过数据向模型注入 prior knowledge。
- 如果一个数据增强技术能够提高一个模型的泛化性能，就说明这个模型缺少相应的 prior knowledge。
- 通过数据增强编码 prior knowledge 虽然通用又直观，但会让训练开销翻倍。
  
  在可能的情况下仍然应该优先将 prior knowledge 编码进模型中。
- 在比较模型性能时需要考虑数据增强的因素。
  
  尽管不同模型的本质就是不同的 prior knowledge，但在同一任务上的模型演进牺牲的是人们不太关心的问题，换句话说演进的模型编码的 prior knowledge 只是与任务本身的 prior knowledge 更接近了。但数据增强是一种强得多的 prior knowledge，在评估模型性能时必须要考虑模型使用的数据增强是否是对于该种任务的通用 prior knowledge。

## [→Text data augmentation](../../../Language/Regularization/Data%20Augmentation.md)

## [→Image data augmentation](https://github.com/Chaoses-Ib/VisualComputing/blob/main/Image%20Processing/Data%20Augmentation/README.md)


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.