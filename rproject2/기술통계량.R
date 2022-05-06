
basketball_train <- read.csv("~/Documents/r-workspace/csv/basketball_train.csv")

View(basketball_train)

## 기술적 통계!!!
dim(basketball_train)
length(basketball_train) #length(df) column size
length(basketball_train$Player) #length(df$column) row size

# df의 전체 구조를 정리
# df의 행/열의 개수
# df의 열이름, 타입들, 각 값들의 목록 
str(basketball_train) 
str(basketball_train$Player) 

# df의 값들의 기술적 통계량
# 최소, 최대, 평균, 분산, 4분위수
summary(basketball_train)

basketball_train$Player[1]
basketball_train$Player[1:3]

basketball_train$Pos
# 1. Pos의 개수
length(basketball_train$Pos)
# 2. Pos의 빈도수
result <- table(basketball_train$Pos)
result
# 3. Pos의 요약
summary(basketball_train$Pos)
# 4. Pos의 값이 SG인 것만 찾아보세요.
result2 <- subset(basketball_train, basketball_train$Pos == 'SG')
result2

# 5. 4의 결과를 그래프로 그려보세요.
barplot(result2$BLK)
barplot(result2$TRB)
barplot(result2$X3P)

# 6. Pos의 전체 값을 그래프로!
barplot(result)
# 7. blk가 0.3이상인 선수들만 추출
result3 <- subset(basketball_train, basketball_train$BLK >= 0.3)
result3
# 8. 7번의 Pos빈도수를 그래프로!
barplot(table(result3$Pos))

## 비율구하기 
result4 <- prop.table(basketball_train$BLK)
round(result4 * 100, 2)

## 정렬, 사분위수  
result5 <- basketball_train$X3P
result5
summary(result5)
min(result5)
max(result5)
range(result5)
sort(result5) #오름차순 
sort(result5, decreasing = T) #내림차순 
mean(result5)
median(result5)
var(result5)
quantile(result5, 1/4)
quantile(result5, 3/4)

## 정규성을 체크해보자.
## 왜도, 첨도를 이용해서 정규분포인지 확인!

install.packages("moments")
library(moments)

skewness(basketball_train$X3P) 
#왜도(치우친 정도)
#중앙에 집중된 모양(0)
#왼쪽에 치우친 종모양(>0)
#오른쪽에 치우친 종모양(<0)
kurtosis(basketball_train$X3P)
#첨도(뾰족한 정도)
#적절한 완만한 경사(3, 0)
#뽀족한 경사(>3)
#아주 완만한 경사(<3)

# > skewness(basketball_train$X3P)
# [1] 0.06910396
# > kurtosis(basketball_train$X3P)
# [1] 1.986352

hist(basketball_train$X3P)



## 빈도와 비율
install.packages('prettyR')

library(prettyR)

freq(basketball_train$Pos)


basketball_train2 <- basketball_train 

basketball_train2$result <- basketball_train2[basketball_train2$X3P > mean(basketball_train2$X3P)] <- '우수'
basketball_train2$result

head(basketball_train2,2)
