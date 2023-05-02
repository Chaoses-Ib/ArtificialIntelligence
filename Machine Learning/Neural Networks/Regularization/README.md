# Regularization
[Wikipedia](https://en.wikipedia.org/wiki/Regularization_(mathematics))

**Regularization** is any modiﬁcation we make to a learning algorithm that is intended to reduce its generalization error, possibly at the expense of increased training error. Regularization is one of the central concerns of the ﬁeld of machine learning, rivaled in its importance only by optimization.

There are many regularization strategies. Some put extra constraints on a machine learning model, such as adding restrictions on the parameter values. Some add extra terms in the objective function that can be thought of as corresponding to a soft constraint on the parameter values. If chosen carefully, these extra constraints and penalties can lead to improved performance on the test set. Sometimes these constraints and penalties are designed to encode speciﬁc kinds of prior knowledge. Other times, these constraints and penalties are designed to express a generic preference for a simpler model class in order to promote generalization. Sometimes penalties and constraints are necessary to make an underdetermined problem determined. Other forms of regularization, known as ensemble methods, combine multiple hypotheses that explain the training data.

In the context of deep learning, most regularization strategies are based on regularizing estimators. Regularization of an estimator works by trading increased bias for reduced variance. An eﬀective regularizer is one that makes a proﬁtable trade, reducing variance signiﬁcantly while not overly increasing the bias.

The no free lunch theorem has made it clear that there is no best machine learning algorithm, and, in particular, no best form of regularization. Instead we must choose a form of regularization that is well suited to the particular task we want to solve. The philosophy of deep learning in general is that a wide range of tasks (such as all the intellectual tasks that people can do) may all be solved eﬀectively using very general-purpose forms of regularization.[^deeplearning]


[^deeplearning]: Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. _Deep Learning_. MIT Press, 2016.