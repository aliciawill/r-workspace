mysum <- function(x){
  result <-  x + 100
  return(result)
}

mysum2 <- function(x, y){
  result = x + y
  return(result)
}

mysum3 <- function(x, y=1000){ #default값!
  #함수를 호출할 때 넣지 않으면, default값을 사용
  result = x + y
  return(result)
}

mysum.minus <- function(x, y){
  s1 <- x + y
  m1 <- x - y
  return(list(s = s1, m = m1))
}
