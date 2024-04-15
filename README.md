```markdown
# Stock Information Retrieval Script 📈

A straightforward Bash script to fetch real-time stock information from Alpha Vantage. Designed for simplicity, it allows quick access to stock prices, trading volumes, and more, all from the comfort of your command line.

## 🚀 Features

- **Ease of Use**: Retrieve stock data with a single command.
- **Real-Time Updates**: Get the latest stock metrics instantly.
- **No Complex Setup**: Uses `curl` and `jq`, eliminating the need for complex dependencies.

## 📋 Prerequisites

Before you begin, ensure you have the following:
- A UNIX-like operating system (Linux, macOS).
- `curl` and `jq` installed on your system.
- An Alpha Vantage API key (get yours for free at [Alpha Vantage](https://www.alphavantage.co/support/#api-key)).

## 🔧 Installation

You can either clone the repository or directly download the `get_stock_info.sh` script. Follow these steps to get started:
```
### Cloning and Running

```bash
git clone https://github.com/rapidghi/getstock.git
cd getstock
chmod +x get_stock_info.sh
./get_stock_info.sh <stock-symbol>
```

### Direct Download and Execution

```bash
curl -o get_stock_info.sh https://raw.githubusercontent.com/rapidghi/getstock/main/get_stock_info.sh
chmod +x get_stock_info.sh
./get_stock_info.sh <stock-symbol>
```

Replace `<stock-symbol>` with the actual symbol of the stock you want information on, such as `AAPL` for Apple Inc.

## 📚 Usage

After installation, you can run the script as follows:

```bash
./get_stock_info.sh tsla
```

This will provide the stock information for Tesla, Inc.

## 🤝 Contributing

Contributions are welcome! If you have a suggestion that would improve this script, please fork the repo and create a pull request, or open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

```
