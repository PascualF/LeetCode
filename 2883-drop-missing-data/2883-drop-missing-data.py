import pandas as pd

def dropMissingData(students: pd.DataFrame) -> pd.DataFrame:
    df = pd.DataFrame(students)
    df_corr = df.dropna(subset=['name'])
    return df_corr
