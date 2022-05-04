## 내장된 함수(built-in)
jumsu = c(1, 7, 4, 2, 3, 9)

print(sort(jumsu)) ## 비파괴 함수
# > print(sort(jumsu))
# [1] 1 2 3 4 7 9

print(jumsu)
# > print(jumsu)
# [1] 1 7 4 2 3 9


jumsu.2 = sort(jumsu) ##오름차순 정렬  
print(jumsu.2)
jumsu.3 = sort(jumsu, decreasing = TRUE) 
##내림차순 정렬  
print(jumsu.3)

jumsu.4 = sort(jumsu, TRUE) 
print(jumsu.4)

str <- paste('굿', '모닝', sep = ' ')
print(str)
str.2 <- paste('굿', '모닝', '굿', '나잇', sep = ' ')
print(str.2)
## 파이썬에서는 브로드캐스팅! 
str.3 <- paste(1:12,'월',sep = '')
print(str.3)

## 사용자 정의 함수(user-defined) => ppt(409)
mysum <- function(x){
  result <-  x + 100
  return(result)
}

sum1 <- mysum(1000)
cat('100을 더한 결과는 ', sum1)

## 두 수를 더해서 결과값을 받아오는 함수를 정의
## 200, 300 => 더한 결과값 출력(1) 
## 5555, 3333 => 더한 결과값 출력(2)
## 1과 2번을 더해서 다시 출력(3)

install.packages('svDialogs')
library(svDialogs) # import!역할 

data.1 <-  dlgInput('숫자1입력 ')$res
data.2 <-  dlgInput('숫자2입력 ')$res
n1 <- as.numeric(data.1)
n2 <- as.numeric(data.2)
print(n1 + n2) ##위에서 만들었던 함수를 적용해서 구해보세요.









