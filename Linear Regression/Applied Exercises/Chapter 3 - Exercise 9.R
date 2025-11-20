pairs(Auto[, -9])
Auto.cor=cor(Auto[, -9])
lm.fit1=lm(mpg~.-name,data=Auto)
summary(lm.fit1)
MC1=1
plot(lm.fit1)
lm.fit2 <- lm(log(mpg) ~ displacement + horsepower +I(horsepower^2) + I(displacement^2) +(horsepower:displacement),data=Auto)