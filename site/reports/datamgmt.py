import pandas as pd

def queryset2dict(queryset, keys):
    output = {key: [] for key in keys}

    for obj in queryset:
        for key in keys:
            output[key].append(obj.serializable_value(key))

    return output

def pitchdf(dataDict):
    df = pd.DataFrame(dataDict)
    df = df[~df['isBall'].isnull()] #filter out all non-pitches (i.e. pickoff attempts)
    df.sort_values(by=['gamePk', 'atBatIndex', 'pitchIndex'], ascending=True, inplace=True) #put in order (will need to revisit for more logical order (by date))
    df.reset_index(drop=True, inplace=True)

    df['newGame'] = df['gamePk'].reset_index(drop=True) != pd.Series(-100).append(df['gamePk'][:-1]).reset_index(drop=True) #new variable bool that says whether the game is different from prior entry
    atBatChange = df['atBatIndex'].reset_index(drop=True) != pd.Series(-100).append(df['atBatIndex'][:-1]).reset_index(drop=True)
    df['newAtBat'] = df['newGame'] | atBatChange #new variable for different atbat vs prior
    df['priorTypeCode'] = pd.Series('na').append(df['typeCode'][:-1]).reset_index(drop=True)
    df.loc[df['newAtBat'], 'priorTypeCode'] = 'na'

    return df

def generatePitchSeq():
    return