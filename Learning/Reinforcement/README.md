# Reinforcement Learning
[Wikipedia](https://en.wikipedia.org/wiki/Reinforcement_learning)

[Just Ask for Generalization | Eric Jang](https://evjang.com/2021/10/23/generalization.html)
> In contrast to supervised learning, reinforcement learning algorithms are much less computationally efficient when it comes to absorbing vast quantities of diverse data needed for generalization.

- [Gymnasium: An API standard for single-agent reinforcement learning environments, with popular reference environments and related utilities (formerly Gym)](https://github.com/Farama-Foundation/Gymnasium)
  - [rtgym: Easily implement custom Gymnasium environments for real-time applications](https://github.com/yannbouteiller/rtgym)

[eleurent/rl-agents: Implementations of Reinforcement Learning and Planning algorithms](https://github.com/eleurent/rl-agents)

[jgvictores/awesome-deep-reinforcement-learning: Curated list for Deep Reinforcement Learning (DRL): software frameworks, models, datasets, gyms, baselines...](https://github.com/jgvictores/awesome-deep-reinforcement-learning/tree/master)

[游戏 AI - 8 - 蔡康的博客 | Kang's Blog](https://kangcai.github.io/2020/07/28/game-ai-08/)

## Offline reinforcement learning
[Is it possible to let RL agent observe environment without acting on it and learn some of the rules nevertheless? : r/reinforcementlearning](https://www.reddit.com/r/reinforcementlearning/comments/ir83sp/is_it_possible_to_let_rl_agent_observe/)

[Supervised learning v.s. offline (batch) reinforcement learning - Stack Overflow](https://stackoverflow.com/questions/68782353/supervised-learning-v-s-offline-batch-reinforcement-learning)
> In the online setting, the fundamental difference between supervised learning and reinforcement learning is the need for exploration and the trade-off between exploration/exploitation in RL. However also in the offline setting there are several differences which makes RL a more difficult/rich problem than supervised learning. A few differences I can think of on the top of my head:
> 
> 1. In reinforcement learning the agent receives what is termed "evaluative feedback" in terms of a scalar reward, which gives the agent some feedback of the quality of the action that was taken but it does not tell the agent if this action is the optimal action or not. Contrast this with supervised learning where the agent receives what is termed "instructive feedback": for each prediction that the learner makes, it receives a feedback (a label) that says what the optimal action/prediction was. The differences between instructive and evaluative feedback is detailed in Rich Sutton's book in the first chapters. Essentially reinforcement learning is optimization with sparse labels, for some actions you may not get any feedback at all, and in other cases the feedback may be delayed, which creates the credit-assignment problem.
> 
> 2. In reinforcement learning you have a temporal aspect where the goal is to find an optimal policy that maps states to actions over some horizon (number of time-steps). If the horizon T=1, then it is just a one-off prediction problem like in supervised learning, but if T>1 then it is a sequential optimization problem where you have to find the optimal action not just in a single state but in multiple states and this is further complicated by the fact that the actions taken in one state can influence which actions should be taken in future states (i.e. it is dynamic).
> 
> 3. In supervised learning there is a fixed i.i.d distribution from which the data points are drawn (this is the common assumption at least). In RL there is no fixed distribution, rather this distribution depends on the policy that is followed and often this distribution is not i.i.d but rather correlated.
> 
> Hence, RL is a much richer problem than supervised learning. In fact, it is possible to convert any supervised learning task into a reinforcement learning task: the loss function of the supervised task can be used as to define a reward function, with smaller losses mapping to larger rewards. Although it is not clear why one would want to do this because it converts the supervised problem into a more difficult reinforcement learning problem. Reinforcement learning makes fewer assumptions than supervised learning and is therefore in general a harder problem to solve than supervised learning. However, the opposite is not possible, it is in general not possible to convert a reinforcement learning problem into a supervised learning problem.

[Supervised Learning vs. Offline Reinforcement Learning : r/reinforcementlearning](https://www.reddit.com/r/reinforcementlearning/comments/1bf6fhq/supervised_learning_vs_offline_reinforcement/)
> First a clarification: when you compare supervised learning vs offline RL, usually what you mean is **imitation learning (behavioral cloning, BC)** vs offline RL. Which means that what you want to predict is not the reward but the optimal actions directly, given a dataset of optimal trajectories (demonstrations), and this is just a supervised problem (learning the mapping s --> a from pure data).
>
> 1. So you use BC = supervised learning when you have a good quantity of demonstrations (expert trajectories), and when your task do not necessarily need any combinatorial generalization . Otherwise go offline RL, since the performance of the offline RL agent can in theory surpass the one in the data, which is impossible for BC.
> 
> 2. BC converges of course faster in number of samples, and is easier to train, but requires optimal data and is maybe costly to collect. Scaling offline RL is still an open question in research, but a very popular one currently so that's just a matter of time. Offline RL however can use suboptimal data and generalize beyond it.
> 
> 3. Look at any robot learning papers by Sergey Levine in the recent years (there's ton...) comparing BC vs offline RL is the gist of a lot of these papers. It's actually hard NOT to find a paper of him that doesn't do that haha.
>
> And you are right in your intuition that BC has limits, which has mostly to do with "stitching": BC can not generalize to a trajectory A0 + B1 if it was trained on the trajectories A0 + B0 and A1 + B1 (if you split the trajectories in the middle and name the two parts A and B). Offline RL however can do this, since a lot of methods are performing approximate dynamic programming, which allows emergent capability of"stitching" of sub parts seen in training to zero-shot solve a new trajectory composed of these subparts.

[Offline (Batch) Reinforcement Learning: A Review of Literature and Applications](https://danieltakeshi.github.io/2020/06/28/offline-rl/)

- [ganjiro/OfflineMania: \[COG24\] - Official repository of "OfflineMania: A Benchmark Environment for Offline Reinforcement Learning in Racing Games"](https://github.com/ganjiro/OfflineMania)
