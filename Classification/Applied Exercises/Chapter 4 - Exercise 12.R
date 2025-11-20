Power <- function() {
  print(2^3)
}
Power2 <- function(x, a) {
  print(x^a)
}
Power2(10, 3)
Power2(8, 17)
Power2(131, 1)
Power3 <- function(x, a) {
  result <- x^a
  return(result)
}
power3.test <- Power3(7, 4)

x <- -100:100
y <- Power3(x, 2)

plot(x, y)