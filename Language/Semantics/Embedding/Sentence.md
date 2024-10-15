# Sentence Embeddings
[Wikipedia](https://en.wikipedia.org/wiki/Sentence_embedding)

## Sentence transformers
> A common method to address clustering and semantic search is to map each sentence to a vector space such that semantically similar sentences are close. Researchers have started to input individual sentences into BERT and to derive fixedsize sentence embeddings. The most commonly used approach is to average the BERT output layer (known as BERT embeddings) or by using the output of the first token (the `[CLS]` token). As we will show, this common practice yields rather bad sentence embeddings, often worse than averaging GloVe embeddings (Pennington et al., 2014).[^reimersSentenceBERTSentenceEmbeddings2019]

[Model2Vec: Distill a Small Fast Model from any Sentence Transformer](https://github.com/MinishLab/model2vec#distilling-a-model2vec-model)
- Good at classification, summarization

Models:
- [jinaai/jina-embeddings-v2-base-zh - Hugging Face](https://huggingface.co/jinaai/jina-embeddings-v2-base-zh) ([Jupyter Notebook](jina.ipynb))
  - Byte-level BPE (`RobertaTokenizer`), vocab size 61056
    - `model_max_length` is 512?
  - Sequence length: 8192
  - Dimension: 768


[^reimersSentenceBERTSentenceEmbeddings2019]: Reimers, N., & Gurevych, I. (2019). Sentence-BERT: Sentence Embeddings using Siamese BERT-Networks (No. arXiv:1908.10084). arXiv. https://doi.org/10.48550/arXiv.1908.10084
