
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
# 2. Pos의 빈도수
result <- table(basketball_train$Pos)
result
# 3. Pos의 요약
# 4. Pos의 값이 SG인 것만 찾아보세요.
# 5. 4의 결과를 그래프로 그려보세요.
# 6. Pos의 전체 값을 그래프로!
barplot(result)
# 7. blk가 0.3이상인 선수들만 추출
# 8. 7번의 Pos빈도수를 그래프로!









