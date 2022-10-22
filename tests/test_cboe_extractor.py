from decouple import config

from cboe_extractor import CBOEExtractor

def test_cboe_extractor_download():
    cboe_extractor = CBOEExtractor(
        cboe_host=config("CBOE_HOST")
    )
    df = cboe_extractor.to_dataframe()
    assert df.shape[0] > 0

def test_cboe_extractor_get_current_price():
    cboe_extractor = CBOEExtractor(
        cboe_host=config("CBOE_HOST")
    )
    current_price: float = cboe_extractor.get_current_price()