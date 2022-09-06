# CBOE Extractor

## Quick start

```python
import pandas as pd

from cboe_extractor import CBOEExtractor

cboe_extractor = CBOEExtractor(
    cboe_host="cdn.cboe.com"
)

df: pd.DataFrame = cboe_extractor.to_dataframe()
```

## Data

| Name             | Type     | Description                                                                                                                                                                                               |
|------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| option_          | str      | Unique identifier of each of the contracts. It has a length of 19 and we can decompose it as follows (example): SPX 220819P04205000                                                                       |
| bid              | float    | The price the trader sells at and the price that market makers and floor traders are willing to buy at. The bid stands for the price at which the market maker will bid for the option contract.          |
| bid_size         | float    | Represents the quantity of a contracts that investors are willing to purchase.                                                                                                                            |
| ask              | float    | The price that you buy at and the price that market makers and floor brokers are willing to sell at. The ask stands for what market makers and floor traders ask you to pay for the option contract.      |
| ask_size         | float    | Represents the quantity of a contracts that investors are willing to purchase.                                                                                                                            |
| iv               | float    | The calculated component derived from the option price when using the Black-Scholes Option Pricing Model.                                                                                                 |
| open_interest    | float    | The total number of options that are not closed or delivered on a particular day.                                                                                                                         |
| volume           | float    | Number of underlying contracts traded.                                                                                                                                                                    |
| delta            | float    | The amount by which an option premium moves divided by the dollar-for-dollar movement in the underlying.                                                                                                  |
| gamma            | float    | Second derivative of the option's price. Measures the rate of change in Delta over time. In a simplified way, measures the speed by which delta changes compared by which the underlying asset is moving. |
| vega             | float    | Measures the sensitivity of an option price to volatility.                                                                                                                                                |
| theta            | float    | Measures the sensitivity of an option price to the variable of time.                                                                                                                                      |
| rho              | float    | Measures the sensitivity of an option price to interest rates.                                                                                                                                            |
| theo             | float    | Theoretical Value. Fair value calculation of an option using a pricing technique such as Black-Scholes options pricing Formula.                                                                           |
| change           |          | TBD                                                                                                                                                                                                       |
| open_            | float    | The price of an option at the beginning of the time frame at the exchange.                                                                                                                                |
| high_            | float    | The higher price of an option during a certain time frame at the exchange.                                                                                                                                |
| low_             | float    | The lower price of an option during a certain time frame at the exchange.                                                                                                                                 |
| tick             | str      | Shows up or down based on the least amount of price movement recorded in a security.                                                                                                                      |
| last_trade_price | float    | Shows the last price at which the contract was traded.                                                                                                                                                    |
| last_trade_time  | datetime | Shows the last time at which the contract was traded.                                                                                                                                                     |
| percent_change   | float    | Shows the percentage (0-100) of price variation between the last and the penultimate transaction.                                                                                                         |
| prev_day_close   | float    | Refers to the prior day's final price of the option when the market officially closes.                                                                                                                    |
| exp_type         | str      | Shows “Standard” for Standard contracts or “Weekly/Quarterly/Monthly” for Weekly/Quarterly/Monthly contracts.                                                                                             |
| exp_date         | datetime | The last day on which the option can be exercised.                                                                                                                                                        |
| strike           | float    | The price at which the option can be bought or sold by the buyer of a call or put option.                                                                                                                 |
| option_type      | str      | Shows “C” for call contracts or “P” for Put contracts.                                                                                                                                                    |
| current_price    | foat     | Shows the spot price of the underlying (SPX in this case).                                                                                                                                                |
| time             | datetime | Shows the time data was captured.                                                                                                                                                                         |