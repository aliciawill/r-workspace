source('함수모음.R')

# result1 <- mysum.minus(888, 111)
# print(result1)

input.result = input.fun()
print(input.result)

a_person <- 200
b_person <- 100 #assign

result5 <- ifelse(a_person > b_person, '우수', '보통')
print(result5)

result6 <- c(1,2,3)
# 기존의 vector에 추가(뒤에 추가) 
result6 <- c(result6, 100)
print(result6)

# 기존의 vector에 추가(중간에 추가) 
result6 <- append(result6, 400, after=2)
print(result6)s

# 기존의 vector에 추가(인덱스 사용) 
result6[5] <- 200
print(result6)

result6[5] <- 300
print(result6)



