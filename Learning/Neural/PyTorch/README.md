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

## Bindings
Rust:
- [tch-rs: Rust bindings for the C++ api of PyTorch.](https://github.com/LaurentMazare/tch-rs)

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
[Datasets & DataLoaders --- PyTorch Tutorials documentation](https://pytorch.org/tutorials/beginner/basics/data_tutorial.html)

[torch.utils.data — PyTorch documentation](https://pytorch.org/docs/stable/data.html)
- `num_workers > 0` will break debugging.

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

## Modes
- No grad mode
- [Inference mode](https://pytorch.org/cppdocs/notes/inference_mode.html)
  
  [`inference_mode()`](https://pytorch.org/docs/stable/generated/torch.inference_mode.html)

## Backends
### `PYTORCH_CUDA_ALLOC_CONF:backend`
- `native`
- `cudaMallocAsync`

  > The main benefit of adding `cudaMallocAsync` to Pytorch is "ecosystem composability": It allows transparent, efficient co-use of GPU memory with other libraries in the same process that also use `cudaMallocAsync`.

  [Using external memory allocator with PyTorch - Issue #43144 - pytorch/pytorch](https://github.com/pytorch/pytorch/issues/43144)

[CUDA semantics --- PyTorch 2.2 documentation](https://pytorch.org/docs/stable/notes/cuda.html#environment-variables)

- To use `PYTORCH_CUDA_ALLOC_CONF:backend`, it must be set before `import torch`.
  
  [INTERNAL ASSERT FAILED at "../c10/cuda/CUDACachingAllocator.cpp":644, please report a bug to PyTorch - Issue #104801 - pytorch/pytorch](https://github.com/pytorch/pytorch/issues/104801)
  ```python
  import torch

  import os
  os.environ["PYTORCH_CUDA_ALLOC_CONF"] = "backend:cudaMallocAsync"

  x = torch.randn(1).cuda()
  print(x)
  '''
  Traceback (most recent call last):
    File "/workspace/src/tmp.py", line 6, in <module>
      x = torch.randn(1).cuda()
    File "/usr/local/lib/python3.10/dist-packages/torch/cuda/__init__.py", line 247, in _lazy_init
      torch._C._cuda_init()
  RuntimeError: config[i] == get()->name() INTERNAL ASSERT FAILED at "../c10/cuda/CUDACachingAllocator.cpp":644, please report a bug to PyTorch. Allocator backend parsed at runtime != allocator backend parsed at load time
  '''
  ```