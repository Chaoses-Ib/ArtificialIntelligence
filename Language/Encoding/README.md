# Encoding
## Character encoding
[Wikipedia](https://en.wikipedia.org/wiki/Character_encoding)

## Token encoding
- One-hot representation
- Term frequency (TF)
- Term frequency-inverse document frequency (TF-IDF)

  The $\text{IDF}(w)$ of a token $w$ is defined with respect to a corpus as:
  $$\text{IDF}(w)=\log{N\over n_w}$$
  where $n_w$ is the number of documents containing the word $w$ and $N$ is the total number of documents.

> In deep learning, it is rare to see inputs encoded using heuristic representations like TF-IDF because the goal is to learn a representation. Often, we start with a one-hot encoding using integer indices and a special “embedding lookup” layer to construct inputs to the neural network.[^nlppytorch]


[^nlppytorch]: Natural Language Processing with
PyTorch by Delip Rao and Brian McMahan (O’Reilly). Copyright 2019, Delip Rao
and Brian McMahan, 978-1-491-97823-8.