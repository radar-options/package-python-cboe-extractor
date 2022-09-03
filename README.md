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