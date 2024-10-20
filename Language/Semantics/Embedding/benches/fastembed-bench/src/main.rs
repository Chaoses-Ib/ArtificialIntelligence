#![feature(stmt_expr_attributes)]

use std::{fs, path::PathBuf};

use fastembed::{InitOptionsUserDefined, TokenizerFiles, UserDefinedEmbeddingModel};

fn setup_logger() {
    use log::{error, info, warn, Level, LevelFilter, Metadata, Record};

    static MY_LOGGER: MyLogger = MyLogger;

    struct MyLogger;

    impl log::Log for MyLogger {
        fn enabled(&self, metadata: &Metadata) -> bool {
            metadata.level() <= Level::Info
        }

        fn log(&self, record: &Record) {
            if self.enabled(record.metadata()) {
                println!("{} {}", record.level(), record.args());
            }
        }
        fn flush(&self) {}
    }

    log::set_logger(&MY_LOGGER).unwrap();
    log::set_max_level(LevelFilter::Trace);
}

fn main() -> Result<(), anyhow::Error> {
    use fastembed::{EmbeddingModel, InitOptions, TextEmbedding};

    setup_logger();

    // With default InitOptions
    // let model = TextEmbedding::try_new(Default::default())?;

    // With custom InitOptions
    // let model = TextEmbedding::try_new(
    //     InitOptions::new(EmbeddingModel::AllMiniLML6V2).with_show_download_progress(true),
    // )?;

    let dir = PathBuf::from(format!(
        "{}/.cache/huggingface/hub/models--jinaai--jina-embeddings-v2-base-zh/snapshots/af9362d224bb396d3801c8b0370040f349c4b83c/onnx",
        #[allow(deprecated)]
        std::env::home_dir().unwrap().to_string_lossy()
    ));
    let model = TextEmbedding::try_new_from_user_defined(
        UserDefinedEmbeddingModel::new(
            fs::read(dir.join("model_quantized.onnx"))?,
            TokenizerFiles {
                tokenizer_file: fs::read(dir.join("tokenizer.json"))?,
                config_file: fs::read(dir.join("config.json"))?,
                special_tokens_map_file: fs::read(dir.join("special_tokens_map.json"))?,
                tokenizer_config_file: fs::read(dir.join("tokenizer_config.json"))?,
            },
        )
        .with_pooling(fastembed::Pooling::Mean)
        .with_quantization(fastembed::QuantizationMode::Static),
        InitOptionsUserDefined::new(),
    )
    .unwrap();

    // let documents = vec![
    //     "passage: Hello, World!",
    //     "query: Hello, World!",
    //     "passage: This is an example passage.",
    //     // You can leave out the prefix but it's recommended
    //     "fastembed-rs is licensed under Apache  2.0",
    // ];

    let chunks = include!("../../chunks.private.in.rs");
    let chunks = (&chunks[..256]).to_owned();

    let time = std::time::Instant::now();
    // Generate embeddings with the default batch size, 256
    let embeddings = model.embed(chunks, Some(256))?;
    println!("Time taken: {:?}", time.elapsed());

    println!("Embeddings length: {}", embeddings.len()); // -> Embeddings length: 4
    println!("Embedding dimension: {}", embeddings[0].len()); // -> Embedding dimension: 384

    Ok(())
}
