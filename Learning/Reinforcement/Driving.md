# Driving
> Autonomous racing is complex and has been tackled using various  approaches. In this chapter, we will explore three different solutions to the autonomous racing AI problem:
> - Classical approaches
>   - Model Predictive Control (MPC)
>   - Model Predictive Path Integral Control (MPPI)
>
>   Both MPC and MPPI have limitations, such as the lack of flexibility in the cost function design or the requirement of highly parallel computations.
> - Imitation learning
> 
> - Reinforcement learning
>
> Each approach to autonomous racing has its own strengths and  weaknesses. Classical approaches offer a modular and interpretable framework for autonomous racing, but they require highly parallel computations and lack flexibility in the cost function design. Imitation learning is a promising approach to overcome the strict real-time constraint of classical approaches, but its performance is limited by the quality of the training data. Reinforcement learning provides an approach that optimizes policies based on sampled trajectories and has shown impressive results in driving and racing tasks. However, it suffers from high sample complexity and the  challenge of balancing exploration and exploitation.[^neindersImprovingTrackmaniaReinforcement2023]

[\[N\] Report: Tesla is using behavior cloning (i.e. supervised imitation learning) for Autopilot and full self-driving : r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/aklwv8/n_report_tesla_is_using_behavior_cloning_ie/)

- [Daviiap/racing-ai](https://github.com/Daviiap/racing-ai)
- [ahmeddwafik22/AI-Race-Game: Created a playable game with AI Players. Built models in blender. Integrated models with unity. Trained neural networks with unity ML-Agents.](https://github.com/ahmeddwafik22/AI-Race-Game)
- [hinsonan/FuzzyLogicSelfDrivingTruck: Using fuzzy logic to self drive a truck on a randomly generated road](https://github.com/hinsonan/FuzzyLogicSelfDrivingTruck)
- [jperod/AI-self-driving-race-car-Deep-Reinforcement-Learning: Solving OpenAI's reinforcement learning CarRacing environment](https://github.com/jperod/AI-self-driving-race-car-Deep-Reinforcement-Learning)
- [MichaelBenliyan/Racing\_Game\_With\_NEAT\_AI: A generation learning simulation trained to find the optimal path around a track. Users can also hop in and try to compete in a variety of difficulty levels.](https://github.com/MichaelBenliyan/Racing_Game_With_NEAT_AI)
- [Apgoldberg1/AI-Car-Racer: A browser based racing game with customizable tracks and evolutionary learning.](https://github.com/Apgoldberg1/AI-Car-Racer)
- [elchuzade/racing-game-ai: Implementing a 2D Racing Game environment using pygame and a Neural Network using keras to play the game](https://github.com/elchuzade/racing-game-ai)

## TrackMania
[Trackmania 2020 AI | Blog about stuff](https://blog.tammearu.eu/posts/tm20ai/)
> Supervised/Self-supervised learning has seen a lot of success recently and is currently applicable to a lot more problems than Reinforcement Learning. In the context of actors in a virtual world like a computer game, supervised learning is often referred to as imitation learning. The actor is not trying to be creative but just trying to imitate training data as best as it can. So achieving optimal policy for given inputs is pretty much out of question unless you have training data that’s strictly optimal. If you have an unlimited amount of optimal training data then you probably already have a solved problem.

> I also didn’t know that it was possible to train a fully vision-based system in just a couple of hours on a mid-range consumer GPU. LLM GPTs take a significant part of a data center and months to train, so I assumed at least I’d need tens of hours of data to start getting results. If I had the data pre-recorded it would only take like 30min to get the results I’ve shown, and that’s a single GPU.
[^neindersImprovingTrackmaniaReinforcement2023]: Neinders, L. J. (2023, May 7). Improving Trackmania Reinforcement Learning Performance: A Comparison of Sophy and Trackmania AI [Info:eu-repo/semantics/bachelorThesis]. University of Twente. https://essay.utwente.nl/96153/

[TMInterface](https://donadigo.com/tminterface/)

RL:
- [Linesight: AI Plays Trackmania with Reinforcement Learning](https://github.com/Linesight-RL/linesight)

  [Why not the latest version of trackmania? - Issue #8 - Linesight-RL/linesight](https://github.com/Linesight-RL/linesight/issues/8)
  > While tmrl is an awesome project, it is built as a real-time gym environment. What real-time means, is that the observation happens, then the AI calculates its moves, sends the command while the game engine is still running. This introduces random delays before / after an action.
  > 
  > We felt that the difficulty of writing a Trackmania AI was large enough, and did not want to tackle the real-time aspect. To remove the real-time aspect, we tap into the game engine and pause/unpause every action. This is done is `tm_interface_manager.py` . The method uses a plugin called TMInterface, which is only available for TMNF, that's why we're not using the latest Trackmania version.

- [trackmania-rl/tmrl: Reinforcement Learning for real-time applications - host of the TrackMania Roborace League](https://github.com/trackmania-rl/tmrl)

- [AndrejGobeX/TrackMania\_AI: Racing game AI](https://github.com/AndrejGobeX/TrackMania_AI)

Imitation learning:
- [vlad-ulmeanu01/tm\_nn](https://github.com/vlad-ulmeanu01/tm_nn)

  [trackmania-replays](https://www.kaggle.com/datasets/catalystgma/trackmania-replays)

## QQ飞车
- [24分钟让AI跑起飞车类游戏 - 腾讯WeTest](https://wetest.qq.com/labs/440) ([TensorFlow](https://mp.weixin.qq.com/s/3uzx54YtqPeG6EDCVTE0YA))
  - Reward: Speed
  - Ops: 左/右转 80ms
  - 小地图 > 全图

[【玩法介绍】基本操作------菜鸟起飞第一步！了解飞车基本玩法-QQ飞车手游官方网站-腾讯游戏](https://speedm.qq.com/web201712/strategy-detail.shtml?newsid=6426523)

[新手上路-QQ飞车手游官方网站-腾讯游戏](https://speedm.qq.com/web201712/greenhand.shtml)

[QQ飞车手游：操作比端游还难？设置了这个键位飘逸分分钟的事！](https://www.sohu.com/a/218088484_99993621)
