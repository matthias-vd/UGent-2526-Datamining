lm.fit1=lm(Sales~Price+Urban+US,data=Carseats)
lm.fit2=lm(Sales~Price+US,data=Carseats)
r.squared1=summary(lm.fit1)$r.squared
r.squared2=summary(lm.fit2)$r.squared
conf.int.95=confint(lm.fit2,level=0.95)