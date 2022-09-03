from decouple import config

from cboe_extractor import CBOEExtractor

def test_download():
    cboe_extractor = CBOEExtractor(
        cboe_host=config("CBOE_HOST")
    )
    df = cboe_extractor.to_dataframe()