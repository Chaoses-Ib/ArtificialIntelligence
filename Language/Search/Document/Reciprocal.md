# Reciprocal Rank Fusion
[Reciprocal rank fusion outperforms condorcet and individual rank learning methods](https://dl.acm.org/doi/10.1145/1571941.1572114)

$$RRFscore(d \in D) = \sum_{r\in R}{1\over k+r(d)}$$
where $D$ is a set of documents to be ranked, $R$ is a set of rankings, each a permutation on $1\dots|D|$, $k=60$ was ﬁxed during a pilot investigation and not altered during subsequent validation.

> Our intuition in choosing this formula derived from fact that while highly-ranked documents are more important, the importance of lower-ranked documents does not vanish as it would were, say, an exponential function used. The constant $k$ mitigates the impact of high rankings by outlier systems.

[Hybrid search scoring (RRF) - Azure AI Search | Microsoft Learn](https://learn.microsoft.com/en-us/azure/search/hybrid-search-ranking)