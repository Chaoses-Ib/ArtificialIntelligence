use criterion::{criterion_group, criterion_main, Criterion};
use std::hint::black_box;

use fastembed::{EmbeddingModel, InitOptions, TextEmbedding};

fn criterion_benchmark(c: &mut Criterion) {
    let mut group = c.benchmark_group("chunks");
    group.significance_level(0.1).sample_size(10);

    let chunks = include!("../../chunks.private.in.rs");

    let model = TextEmbedding::try_new(
        InitOptions::new(EmbeddingModel::AllMiniLML6V2).with_show_download_progress(true),
    )
    .unwrap();

    for batch in [32].iter() {
        group.bench_function(format!("batch {}", batch), |b| {
            b.iter(|| {
                model
                    .embed(black_box((&chunks[..*batch]).to_owned()), Some(*batch))
                    .unwrap();
            })
        });
    }

    group.finish();
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
