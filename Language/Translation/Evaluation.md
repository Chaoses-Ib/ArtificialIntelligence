# Evaluation
[Wikipedia](https://en.wikipedia.org/wiki/Evaluation_of_machine_translation)

- Round-trip translation

  > A typical way for lay people to assess machine translation quality is to translate from a source language to a target language and back to the source language with the same engine. Though intuitively this may seem like a good method of evaluation, it has been shown that round-trip translation is a "poor predictor of quality". The reason why it is such a poor predictor of quality is reasonably intuitive. A round-trip translation is not testing one system, but two systems: the language pair of the engine for translating into the target language, and the language pair translating back from the target language.

- Human evaluation

- Automatic evaluation
  - BLEU
  - NIST
  - Word error rate
  - METEOR
  - LEPOR

## LLM
- 2023-02 [Large Language Models Are State-of-the-Art Evaluators of Translation Quality](https://arxiv.org/abs/2302.14520)
  > Our method for translation quality assessment only works with GPT 3.5 and larger models.

  ![Results for the system-level pairwise accuracy compared to the current automatic metric. Metrics marked as “[noref]” do not use a reference translation.](images/Evaluation/2302.14520.png)