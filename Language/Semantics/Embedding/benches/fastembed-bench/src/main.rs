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
    let model = TextEmbedding::try_new(
        InitOptions::new(EmbeddingModel::AllMiniLML6V2).with_show_download_progress(true),
    )?;

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
