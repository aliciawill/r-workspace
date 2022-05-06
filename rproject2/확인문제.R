# 1.
# -------------------------------------
library(MASS)

df <- MASS::Animals
df

head(df)

freq(df$brain)
freq(df$body)

summary(df)

# 2.
# -------------------------------------
df2 <- read.csv('descriptive.csv')
df2

freq(df2)
# Frequencies for resident 
# 1    2    5    3    4   NA
# 132   55   44   31   17   21
# %      44 18.3 14.7 10.3  5.7    7 
# %!NA 47.3 19.7 15.8 11.1  6.1 
# 
# 
# Frequencies for gender 
# 1    2    0    5   NA
# 173  124    2    1    0
# %    57.7 41.3  0.7  0.3    0 
# %!NA 57.7 41.3  0.7  0.3 
# 
# 
# Frequencies for age 
# 48   49   47   65   55   45   63   51   54   46   58   60   64   50   56   57   61   59   52   62   53   69   40   42   44   68   NA
# 34   30   24   24   23   19   18   13   13   12   11   10   10    9    9    9    8    6    4    4    3    3    1    1    1    1    0
# %    11.3   10    8    8  7.7  6.3    6  4.3  4.3    4  3.7  3.3  3.3    3    3    3  2.7    2  1.3  1.3    1    1  0.3  0.3  0.3  0.3    0 
# %!NA 11.3   10    8    8  7.7  6.3    6  4.3  4.3    4  3.7  3.3  3.3    3    3    3  2.7    2  1.3  1.3    1    1  0.3  0.3  0.3  0.3 
# 
# 
# Frequencies for level 
# 1    2    3   NA
# 117  100   70   13
# %      39 33.3 23.3  4.3 
# %!NA 40.8 34.8 24.4 
# 
# 
# Frequencies for cost 
# 5    6.3      4      6    6.2    5.1    6.4    4.1    5.2    5.5    6.1    6.7    5.3      3    4.7    5.7    3.5    4.3    4.6    5.4    5.8    4.4    4.9    5.6    6.5    6.8    6.9    7.1    7.7    3.8    3.9    4.2      7 -235.8   -5.9    2.3    3.3    3.4    4.8    5.9    7.2    7.9   75.1   85.1  115.7  336.5 -457.2 -345.6    -75   -4.8    2.1    4.5  225.8  257.8    675     NA
# 18   16   15   14   13   11   11    9    9    9    8    8    7    6    6    6    5    5    5    5    5    4    4    4    4    4    4    4    4    3    3    3    3    2    2    2    2    2    2    2    2    2    2    2    2    2    1    1    1    1    1    1    1    1    1   30
# %       6  5.3    5  4.7  4.3  3.7  3.7    3    3    3  2.7  2.7  2.3    2    2    2  1.7  1.7  1.7  1.7  1.7  1.3  1.3  1.3  1.3  1.3  1.3  1.3  1.3    1    1    1    1  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.3  0.3  0.3  0.3  0.3  0.3  0.3  0.3  0.3   10 
# %!NA  6.7  5.9  5.6  5.2  4.8  4.1  4.1  3.3  3.3  3.3    3    3  2.6  2.2  2.2  2.2  1.9  1.9  1.9  1.9  1.9  1.5  1.5  1.5  1.5  1.5  1.5  1.5  1.5  1.1  1.1  1.1  1.1  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.7  0.4  0.4  0.4  0.4  0.4  0.4  0.4  0.4  0.4 
# 
# 
# Frequencies for type 
# 1    2   NA
# 200   74   26
# %    66.7 24.7  8.7 
# %!NA   73   27 
# 
# 
# Frequencies for survey 
# 2    3    4    1    5   NA
# 72   63   25   20    7  113
# %      24   21  8.3  6.7  2.3 37.7 
# %!NA 38.5 33.7 13.4 10.7  3.7 
# 
# 
# Frequencies for pass 
# 1    2   NA
# 159  121   20
# %      53 40.3  6.7 
# %!NA 56.8 43.2 


summary(df2)
# resident         gender          age       
# Min.   :1.000   Min.   :0.00   Min.   :40.00  
# 1st Qu.:1.000   1st Qu.:1.00   1st Qu.:48.00  
# Median :2.000   Median :1.00   Median :53.00  
# Mean   :2.233   Mean   :1.42   Mean   :53.88  
# 3rd Qu.:3.000   3rd Qu.:2.00   3rd Qu.:60.00  
# Max.   :5.000   Max.   :5.00   Max.   :69.00  
# NA's   :21                                    
#      level            cost         
#  Min.   :1.000   Min.   :-457.200  
#  1st Qu.:1.000   1st Qu.:   4.425  
#  Median :2.000   Median :   5.400  
#  Mean   :1.836   Mean   :   8.752  
#  3rd Qu.:2.000   3rd Qu.:   6.300  
#  Max.   :3.000   Max.   : 675.000  
#  NA's   :13      NA's   :30        
#       type          survey          pass      
#  Min.   :1.00   Min.   :1.00   Min.   :1.000  
#  1st Qu.:1.00   1st Qu.:2.00   1st Qu.:1.000  
#  Median :1.00   Median :3.00   Median :1.000  
#  Mean   :1.27   Mean   :2.61   Mean   :1.432  
#  3rd Qu.:2.00   3rd Qu.:3.00   3rd Qu.:2.000  
#  Max.   :2.00   Max.   :5.00   Max.   :2.000  
#  NA's   :26     NA's   :113    NA's   :20   


type <- df2$type
table(type)
barplot(table(type), col = c('red', 'orange'))
pie(table(type), col = c('green', 'blue'))
# > type <- df2$type
# > table(type)
# type
# 1   2 
# 200  74 
# > barplot(table(type), col = c('red', 'orange'))
# > pie(table(type), col = c('green', 'blue'))

skewness(df2$age) #왼쪽에 치우침.
kurtosis(df2$age) #완만한 경사
table(df2$age)
mean(df2$age)
hist(df2$age)
# > skewness(df2$age)
# [1] 0.3804892
# > kurtosis(df2$age)
# [1] 1.866623
# > table(df2$age)
# 
# 40 42 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 
# 1  1  1 19 12 24 34 30  9 13  4  3 13 23  9  9 11  6 10 
# 61 62 63 64 65 68 69 
# 8  4 18 10 24  1  3 
# > hist(df2$age)
# > mean(df2$age)
# [1] 53.88




