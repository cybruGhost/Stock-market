📈 StockMarket — Track Stocks the Hacker Way

StockMarket is a command-line utility that displays real-time information about selected stock markets and individual tickers — directly from your terminal.

StockMarket UI
📥 Installing StockMarket from Source

    Prerequisite: Go must be installed.
    Download it from: https://go.dev/dl/ and ensure your $GOPATH is properly set.

Once Go is installed, follow these steps to build and run:

git clone https://github.com/-market](https://github.com/cybruGhost/Stock-market/
cd stockmarket
go build ./cmdStock-market
.Stock-market

    ✅ This will compile and launch StockMarket in your terminal.

⚙️ Using StockMarket

By default, StockMarket refreshes stock quotes and market data every 5 minutes (600 seconds).
You can customize this and other settings in a config file named .stockmarkrc, located in your home directory ($HOME).
🧪 Preconfigured Tickers

For demonstration, StockMarket comes preloaded with several stock tickers. You can modify the list anytime using simple keyboard shortcuts.
⌨️ Keyboard Commands
Key / Shortcut	Action Description
+	Add a stock to your watchlist
-	Remove a stock from your list
?, h, H	Display help screen
f	Apply a filtering expression
F (Shift + f)	Clear filtering expression
g, G	Group stocks by gainers and losers
o	Change sorting order of columns
p, P	Pause or resume data refresh
t	Toggle timestamps on or off
Mouse Scroll	Scroll up/down with mouse
PgUp / PgDn	Page scroll up/down
Up / Down Arrows	Scroll line-by-line
j, J	Scroll up (alternative keys)
k, K	Scroll down (alternative keys)
q, Esc	Quit the application

    When adding stocks, enter them as a comma-separated list (e.g., AAPL,TSLA,MSFT).

All preferences, including your stock list, are saved automatically in your profile file:
~/.stockmarkrc
🕒 Timestamp Modes

Without Timestamp:

No Timestamp

With Timestamp:

With Timestamp

Toggle timestamps anytime using the t key.
🧠 Expression-Based Filtering

StockMarket includes a built-in, real-time expression engine for filtering stocks.
🪄 Example

Press f and enter:

last <= 5

This filters the list to show only stocks whose last traded price is less than or equal to $5.
Available Properties for Expressions

You can build filters using the following properties:

    last

    change

    changePercent

    open

    low

    high

    low52

    high52

    volume

    avgVolume

    pe

    peX

    dividend

    yield

    mktCap

    mktCapX

    advancing

    Expressions must return a boolean (true/false). Invalid expressions will result in failure.

Learn More About Syntax

Expression parsing is powered by Knetic/govaluate.
Refer to govaluate syntax reference for full documentation.
To Clear Filters

Press Shift + F.
📁 Profile File and Options

Your app configuration is stored in a JSON-formatted file named .stockmarkrc, typically located at:

~/.stockmarkrc

Example Option

To enable row shading (alternating line colors), add this to your config:

{
  "RowShading": true
}

🧑‍💻 Contributing

Contributions are very welcome!

    Fork the repository

    Make your changes

    Submit a pull request

Help us improve and extend StockMarket.
🪪 License

MIT License

Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall
be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT
OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


