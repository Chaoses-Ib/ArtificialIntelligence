# Representation Learning
[Wikipedia](https://en.wikipedia.org/wiki/Feature_learning)

> **Feature learning** or **representation learning** is a set of techniques that allows a system to automatically discover the representations needed for feature detection or classification from raw data.
> 
> Feature learning is motivated by the fact that machine learning tasks such as classification often require input that is mathematically and computationally convenient to process. However, real-world data such as images, video, and sensor data has not yielded to attempts to algorithmically define specific features. An alternative is to discover such features or representations through examination, without relying on explicit algorithms.

同样的学习问题，为什么先学习 feature 会比 end-to-end 学习更容易解决呢？feature learning 本质上是一种先验知识：“这个任务是可以先将输入转换为中间表示，再进一步来解决的”，这使得 encoder 和 decoder 都可以保持相对简单。另外，根据 [universal approximation theorem](../../Neural/README.md#universal-approximation-theorem) 中的经验，深层的网络比宽的网络表达能力更强，只是更难训练，但 feature learning 是可以 two-phase 训练的，相当于免费获得了 deep 的好处。

[metric learning and contrastive learning difference - Stack Overflow](https://stackoverflow.com/questions/71809044/metric-learning-and-contrastive-learning-difference)