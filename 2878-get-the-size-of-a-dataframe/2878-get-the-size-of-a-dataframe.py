import pandas as pd

def getDataframeSize(players: pd.DataFrame) -> List[int]:
    df = pd.DataFrame(players)
    rows = len(df)
    columns = len(df.columns)
    df_size = [rows, columns]
    return df_size