# Meta Learning
[Wikipedia](https://en.wikipedia.org/wiki/Meta-learning_(computer_science))

**Meta learning** is a subfield of machine learning where automatic learning algorithms are applied to metadata about machine learning experiments. As of 2017, the term had not found a standard interpretation, however the main goal is to use such metadata to understand how automatic learning can become flexible in solving learning problems, hence to improve the performance of existing learning algorithms or to learn (induce) the learning algorithm itself, hence the alternative term **learning to learn**.

Meta learning 与非 meta learning 之间的界限不是绝对的，即使是以某一个特定任务为目标的 learning，它的真实目标也是 generalization 而不是 fit，仍然需要让 learning 更加 flexible。

There are three common approaches:
1. using (cyclic) networks with external or internal memory (model-based)
2. learning effective distance metrics (metrics-based)
3. explicitly optimizing model parameters for fast learning (optimization-based).

   [一文入门元学习（Meta-Learning）（附代码） - 知乎](https://zhuanlan.zhihu.com/p/136975128)

[Meta-Learning: Learning to Learn Fast | Lil'Log](https://lilianweng.github.io/posts/2018-11-30-meta-learning/) ([中文](https://wei-tianhao.github.io/blog/2019/09/17/meta-learning.html))

- 2020-10 [A Survey of Deep Meta-Learning](https://arxiv.org/abs/2010.03522)
- 2022-07 [Meta-learning approaches for learning-to-learn in deep learning: A survey](https://www.sciencedirect.com/science/article/abs/pii/S0925231222004684)
- 2022-08 [Multimodality in meta-learning: A comprehensive survey - ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0950705122004737)
- 2023-05 [Meta-learning approaches for few-shot learning: A survey of recent advances](https://arxiv.org/abs/2303.07502)

[\[D\] Do people use meta learning in production? : MachineLearning](https://www.reddit.com/r/MachineLearning/comments/d3myqg/d_do_people_use_meta_learning_in_production/)

## Transfer learning
[The Close Relationship Between Contrastive Learning and Meta-Learning | OpenReview](https://openreview.net/forum?id=gICys3ITSmj)

[What are the differences between transfer learning and meta learning? - Artificial Intelligence Stack Exchange](https://ai.stackexchange.com/questions/18232/what-are-the-differences-between-transfer-learning-and-meta-learning)
> Meta-learning is more about speeding up and optimizing hyperparameters for networks that are not trained at all, whereas transfer learning uses a net that has already been trained for some task and reusing part or all of that network to train on a new task which is relatively similar. So, although they can both be used from task to task to a certain degree, they are completely different from one another in practice and application, one tries to optimize configurations for a model and the other simply reuses an already optimized model, or part of it at least.

[artificial intelligence - Differences between Transfer Learning and Meta Learning - Stack Overflow](https://stackoverflow.com/questions/60261727/differences-between-transfer-learning-and-meta-learning)
> In transfer learning, we pre-train model parameters with a large dataset and then use those parameters as initial parameters to finetune on some other task having a smaller dataset. this classic pre-training approach has no guarantee of learning an initialization that is good for fine-tuning. In meta-learning, we learn an initial set of parameters that can be finetuned easily on another similar task with only a few gradient steps. It directly optimizes performance with respect to this initialization differentiating through the fine-tuning process.