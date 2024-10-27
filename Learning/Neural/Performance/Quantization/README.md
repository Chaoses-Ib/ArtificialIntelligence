# Quantization
[Static vs Dynamic Quantization in Machine Learning -- Apo's tech blog](https://selek.tech/posts/static-vs-dynamic-quantization-in-machine-learning/)

[Quantization --- PyTorch documentation](https://pytorch.org/docs/stable/quantization.html)

[Quantization](https://huggingface.co/docs/optimum/en/onnxruntime/usage_guides/quantization)

[Quantize ONNX models | onnxruntime](https://onnxruntime.ai/docs/performance/model-optimizations/quantization.html)
> There are two ways of quantizing a model: dynamic and static. Dynamic quantization calculates the quantization parameters (scale and zero point) for activations dynamically. These calculations increase the cost of inference, while usually achieve higher accuracy comparing to static ones.

## Static quantization
Calibration
- Dataset

## Dynamic quantization
[Dynamic Quantization --- PyTorch Tutorials documentation](https://pytorch.org/tutorials/recipes/recipes/dynamic_quantization.html)

How to check if a quantized model is static quantized or dynamic quantized?
- ONNX: `DynamicQuantizeLinear`

### Batch inference
[is batch inference supported in dynamic quantization? - Issue #10111 - microsoft/onnxruntime](https://github.com/microsoft/onnxruntime/issues/10111)
> However running with different batch size, give inconsistent model prediction.
>
> It is expected. For dynamic quantization, quantization parameters of activation(scale and zero point) are computed dynamically. With different batch size, the scale and zero point will change and thus introduce difference. You can use static quantization if you require result to be exactly same.

[Dynamic Quantization causes batching to change the output values - Issue #107 - Anush008/fastembed-rs](https://github.com/Anush008/fastembed-rs/issues/107)
- > Due to the values depending on the data range of the batch, one can possibly craft 2 polar opposite strings that gives completely different results when embedded individually and batched.

- [fix!: Throws an informative error upon inappropriate batch size with ... - Anush008/fastembed-rs@51686c3](https://github.com/Anush008/fastembed-rs/commit/51686c36b48bbc069d3c7d7ee4f6540d7bc39272)
  
  > Dynamic quantization cannot be used with batching. This is due to the dynamic quantization process adjusting the data range to fit each batch, making the embeddings incompatible across batches. Try specifying a batch size of `None`, or use a model with static or no quantization.