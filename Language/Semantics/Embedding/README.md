# Word Embedding
In natural language processing, **word embedding** is a term used for the representation of words for text analysis, typically in the form of a real-valued vector that encodes the meaning of the word such that the words that are closer in the vector space are expected to be similar in meaning.[^wiki]

> Embedding在数学上表示一个maping, f: X -> Y， 也就是一个function，其中该函数是injective（就是我们所说的单射函数，每个Y只有唯一的X对应，反之亦然）和structure-preserving (结构保存，比如在X所属的空间上X1 < X2,那么映射后在Y所属空间上同理 Y1 < Y2)。那么对于word embedding，就是将单词word映射到另外一个空间，其中这个映射具有injective和structure-preserving的特点。
> 
> 通俗的翻译可以认为是单词嵌入，就是把X所属空间的单词映射为到Y空间的多维向量，那么该多维向量相当于嵌入到Y所属空间中，一个萝卜一个坑。
> 
> word embedding，就是找到一个映射或者函数，生成在一个新的空间上的表达，该表达就是word representation。
> 
> 推广开来，还有image embedding, video embedding, 都是一种将源数据映射到另外一个空间[^zhihu]

[^wiki]: [Word embedding - Wikipedia](https://en.wikipedia.org/wiki/Word_embedding)
[^zhihu]: [什么是 word embedding? - 知乎](https://www.zhihu.com/question/32275069)

## Tools
- [WantWords 反向词典](https://wantwords.net/)