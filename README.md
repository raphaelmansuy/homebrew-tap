
## Hiramu CLI

Hiramu CLI is a command-line interface (CLI) tool for interacting with large language models. It allows you to easily access and utilize the power of these models for various tasks, such as text generation, question answering, and more.

### Features

- **Text Generation**: Generate human-like text based on a given prompt or context.
- **Question Answering**: Ask questions and receive accurate answers from the language model.
- **Summarization**: Summarize long documents or articles into concise summaries.
- **Translation**: Translate text between different languages.
- **And more!** Hiramu CLI is designed to be extensible, allowing for additional features and capabilities to be added in the future.

### Installation

Hiramu CLI is available as a Homebrew formula for macOS and Linux. To install, simply run the following command:

```bash
brew install raphaelmansuy/hiramu-cli/hiramu-cli
```

If you don't have Homebrew installed, you can follow the instructions on the [Homebrew website](https://brew.sh/) to set it up.

### Usage

After installing Hiramu CLI, you can access the tool by running the `hiramu-cli` command in your terminal. Here are some common use cases:

#### Text Generation

```bash
hiramu-cli generate --prompt "Once upon a time, there was a"
```

This command will generate text based on the provided prompt.

#### Question Answering

```bash
hiramu-cli answer --question "What is the capital of France?"
```

This command will use the language model to answer the given question.

#### Summarization

```bash
hiramu-cli summarize --file path/to/document.txt
```

This command will summarize the contents of the specified file.

For more detailed usage instructions and available options, run `hiramu-cli --help`.

### Contributing

Contributions to Hiramu CLI are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the [GitHub repository](https://github.com/raphaelmansuy/hiramu-cli).

### License

Hiramu CLI is licensed under the [Apache-2.0 License](https://github.com/raphaelmansuy/hiramu-cli/blob/main/LICENSE).