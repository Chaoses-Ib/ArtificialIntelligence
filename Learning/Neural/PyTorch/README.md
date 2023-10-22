# [PyTorch](https://pytorch.org/)
[GitHub](https://github.com/pytorch/pytorch)

[PyTorch documentation](https://pytorch.org/docs/stable/index.html)
- [PyTorch 2.0](https://pytorch.org/get-started/pytorch-2.0/)

Tutorials:
- [PyTorch Tutorials](https://pytorch.org/tutorials/)
  - [Introduction to PyTorch](https://pytorch.org/tutorials/beginner/basics/intro.html)
- [Zero to Mastery Learn PyTorch for Deep Learning](https://www.learnpytorch.io/)
- [Deep Learning with Pytorch](https://www.manning.com/books/deep-learning-with-pytorch)
- [Dive into Deep Learning](https://d2l.ai/) ([GitHub](https://github.com/d2l-ai/d2l-en))
  - [动手学深度学习](https://zh.d2l.ai/) ([GitHub](https://github.com/d2l-ai/d2l-zh))
- [深度学习框架 PyTorch：入门与实践](https://github.com/chenyuntc/pytorch-book) (discontinued)

## Tensor
[torch.Tensor — PyTorch documentation](https://pytorch.org/docs/stable/tensors.html)

numpy.ndarray → torch.Tensor:
```python
x = torch.tensor(np.array([[1, 2, 3], [4, 5, 6]]))
```

torch.Tensor → numpy.ndarray & pandas.DataFrame:
```python
x.numpy()
pd.DataFrame([x.flatten() for x in x.numpy()])
```

## Dataset
[torch.utils.data — PyTorch documentation](https://pytorch.org/docs/stable/data.html)

pandas.DataFrame → torch.Dataset:
```python
class DataFrameDataset(torch.utils.data.Dataset):
    def __init__(self, df):
        self.df = df

    def __len__(self):
        return len(self.df)

    def __getitem__(self, idx):
        return self.df.iloc[idx].values
```

## Neural network
[torch.nn — PyTorch documentation](https://pytorch.org/docs/stable/nn.html)

## Optimizers
[torch.optim — PyTorch documentation](https://pytorch.org/docs/stable/optim.html)
