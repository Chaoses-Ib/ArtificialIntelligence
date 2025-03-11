# Imitation Learning
[Wikipedia](https://en.wikipedia.org/wiki/Imitation_learning)

**Imitation learning (behavioral cloning, learning from demonstration, apprenticeship learning)** is a paradigm in reinforcement learning, where an agent learns to perform a task by supervised learning from expert demonstrations.

- Does imitation learning generally has worse generalization performance than reinforcement learning?

  Presumably.

  > Learning from demonstrations often suffers from the covariate shift problem, which results in cascading errors of the learned policy.[^luoLearningSelfCorrectablePolicies2019]

  > Given enough data, even supervised approaches can do one-shot imitation learning; however, they are vulnerable to cascading failures when the agent trajectory diverges from the demonstrations. Compared to purely supervised methods, Generative Adversarial Imitation Learning (GAIL) can learn more robust controllers from fewer demonstrations, but is inherently mode-seeking and more difficult to train.[^wangRobustImitationDiverse2017]

- Best to use a hybrid method of IL + RL?

  But does the increased complexity saves more resource than just scaling up the RL?

[Ch. 21 - Imitation Learning](https://underactuated.mit.edu/imitation.html)

[What are the limitations of imitation learning? - Quora](https://www.quora.com/What-are-the-limitations-of-imitation-learning)

[Is it possible to prove that an imitation learning agent cannot surpass an expert guide policy in expected reward? : r/reinforcementlearning](https://www.reddit.com/r/reinforcementlearning/comments/vztt6x/is_it_possible_to_prove_that_an_imitation/)

- [markub3327/ImitationLearning: The self-driving car driven by Deep CNN & RNN networks is playing the racing game.](https://github.com/markub3327/ImitationLearning)
- [microsoft/SimpleRacerResearchPlatform: A simple web racing game demo using imitation learning models.](https://github.com/microsoft/SimpleRacerResearchPlatform)
- [\[2402.14194v1\] BeTAIL: Behavior Transformer Adversarial Imitation Learning from Human Racing Gameplay](https://arxiv.org/abs/2402.14194v1)[\[2402.14194v1\] BeTAIL: Behavior Transformer Adversarial Imitation Learning from Human Racing Gameplay](https://arxiv.org/abs/2402.14194v1)

> Game development is a long process that involves many stages before a product is ready for the market. Human play testing is among the most time consuming, as testers are required to repeatedly perform tasks in the search for errors in the code. Therefore, automated testing is seen as a key technology for the gaming industry, as it would dramatically improve development costs and efficiency. Toward this end, we propose EVOLUTE, a novel imitation learning-based architecture that combines behavioural cloning (BC) with energy based models (EBMs). EVOLUTE is a two-stream ensemble model that splits the action space of autonomous agents into continuous and discrete tasks. The EBM stream handles the continuous tasks, to have a more refined and adaptive control, while the BC stream handles discrete actions, to ease training. We evaluate the performance of EVOLUTE in a shooting-and-driving game, where the agent is required to navigate and continuously identify targets to attack. The proposed model has higher generalisation capabilities than standard BC approaches, showing a wider range of behaviours and higher performances. Also, EVOLUTE is easier to train than a pure end-to-end EBM model, as discrete tasks can be quite sparse in the dataset and cause model training to explore a much wider set of possible actions while training.[^amadoriRobustImitationLearning2024]

## Multi-agent
e.g. competitive games

> Training agents in multi-agent competitive games presents significant challenges due to their intricate nature. These challenges are exacerbated by dynamics influenced not only by the environment but also by opponents’ strategies. Existing methods often struggle with slow convergence and instability. To address this, we harness the potential of imitation learning to comprehend and anticipate opponents’ behavior, aiming to mitigate uncertainties with respect to the game dynamics. Our key contributions include:
> - a new multi-agent imitation learning model for predicting next moves of the opponents — our model works with hidden opponents’ actions and local observations;
> - a new multi-agent reinforcement learning algorithm that combines our imitation learning model and policy training into one single training process; and
> - extensive experiments in three challenging game environments, including an advanced version of the Star-Craft multi-agent challenge (i.e., SMACv2). Experimental results show that our approach achieves superior performance compared to existing state-of-the-art multi-agent RL algorithms.[^buiMimickingDominateImitation2023]


[^buiMimickingDominateImitation2023]: Bui, T. V., Mai, T., & Nguyen, T. H. (2023). Mimicking To Dominate: Imitation Learning Strategies for Success in Multiagent Competitive Games (No. arXiv:2308.10188). arXiv. https://doi.org/10.48550/arXiv.2308.10188
[^amadoriRobustImitationLearning2024]: Amadori, P. V., Bradley, T., Spick, R., & Moss, G. (2024). Robust Imitation Learning for Automated Game Testing (No. arXiv:2401.04572). arXiv. https://doi.org/10.48550/arXiv.2401.04572
[^luoLearningSelfCorrectablePolicies2019]: Luo, Y., Xu, H., & Ma, T. (2019). Learning Self-Correctable Policies and Value Functions from Demonstrations with Negative Sampling (No. arXiv:1907.05634). arXiv. https://doi.org/10.48550/arXiv.1907.05634
[^wangRobustImitationDiverse2017]: Wang, Z., Merel, J., Reed, S., Wayne, G., Freitas, N. de, & Heess, N. (2017). Robust Imitation of Diverse Behaviors (No. arXiv:1707.02747). arXiv. https://doi.org/10.48550/arXiv.1707.02747
