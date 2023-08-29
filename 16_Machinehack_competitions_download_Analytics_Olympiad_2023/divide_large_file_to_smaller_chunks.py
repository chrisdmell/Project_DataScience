a = pd.read_csv("C:\\Users\\chris.dmello\\Downloads\\Participants_Data_analytics_olympiad_2023\\train.csv")
len(a)

for i,chunk in enumerate(pd.read_csv("C:\\Users\\chris.dmello\\Downloads\\Participants_Data_analytics_olympiad_2023\\train.csv", chunksize=100000)):
    chunk.to_csv('C:\\Users\\chris.dmello\\Downloads\\Participants_Data_analytics_olympiad_2023\\train_chunk{}.csv'.format(i), index=False)
    
    
