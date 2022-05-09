two_sample <- read.csv("~/Documents/r-workspace/csv/two_sample.csv")
View(two_sample)

head(two_sample)
summary(two_sample)
# score      
# Min.   :3.000  
# 1st Qu.:5.100  
# Median :5.600  
# Mean   :5.685  
# 3rd Qu.:6.300  
# Max.   :8.000  
# NA's   :73

result <- subset(two_sample, !is.na(score), c(method, score))
head(result)

length(result$score)


a <- subset(result, method == 1)
b <- subset(result, method == 2)

a.score <- a$score
b.score <- b$score

print(b.score)
length(a.score) #[1] 109
length(b.score) #[1] 118

## 독립적인 a, b집단의 동질성을 비교
var.test(a.score, b.score)
# F test to compare two
# variances
# 
# data:  a.score and b.score
# F = 1.2158, num df = 108,
# denom df = 117, p-value =
#   0.3002
# alternative hypothesis: true ratio of variances is not equal to 1
# 95 percent confidence interval:
#   0.8394729 1.7656728
# sample estimates:
#   ratio of variances 
# 1.215768 
# => 정규분포를 따른다. (t-test사용)

t.test(a.score, b.score, alternative = 'two.side', conf.level = 0.95)
# Welch Two Sample t-test
# 
# data:  a.score and b.score
# t = -2.0547, df = 218.19,
# p-value = 0.0411
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -0.48296687 -0.01005133
# sample estimates:
#   mean of x mean of y 
# 5.556881  5.803390 
# => 대립가설 채택, 차이가 있다.!

t.test(a.score, b.score, alternative = 'greater', conf.level = 0.95)
# Welch Two Sample t-test
# 
# data:  a.score and b.score
# t = -2.0547, df = 218.19,
# p-value = 0.9794
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#   -0.4446915        Inf
# sample estimates:
#   mean of x mean of y 
# 5.556881  5.803390
# => 영가설 채택, a가 b보다 크지 않다. a가 b보다 작다.


##문제
twomethod <- read.csv("~/Documents/r-workspace/csv/twomethod.csv")
twomethod


result2 <- subset(twomethod, !is.na(score), c(method, score))
head(result2)

length(result$score)


a2 <- subset(result2, method == 1)
b2 <- subset(result2, method == 2)

a2.score <- a2$score
b2.score <- b2$score

print(b2.score)
length(a2.score) #[1] 109
length(b2.score) #[1] 118

## 독립적인 a, b집단의 동질성을 비교
var.test(a2.score, b2.score)
# F test to compare two variances
# 
# data:  a2.score and b2.score
# F = 1.0648, num df = 21, denom df = 34, p-value =
#   0.8494
# alternative hypothesis: true ratio of variances is not equal to 1
# 95 percent confidence interval:
#   0.502791 2.427170
# sample estimates:
#   ratio of variances 
# 1.06479 
# => 두 그룹이 동질하다.

t.test(a2.score, b2.score, alternative = 'two.side', conf.level = 0.95)
# Welch Two Sample t-test
# 
# data:  a2.score and b2.score
# t = -5.6056, df = 43.705, p-value = 1.303e-06
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -17.429294  -8.209667
# sample estimates:
#   mean of x mean of y 
# 16.40909  29.22857 
# => 대립가설 채택, 차이가 있다.

t.test(a2.score, b2.score, alternative = 'greater', conf.level = 0.95)

# Welch Two Sample t-test
# 
# data:  a2.score and b2.score
# t = -5.6056, df = 43.705, p-value = 1
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#   -16.66255       Inf
# sample estimates:
#   mean of x mean of y 
# 16.40909  29.22857 
# => b2그룹이 a2그룹보다 평균이 작다. 















