# mice data

#mice_bef <- rnorm(200, mean=20, sd=1.41)
var(mice_bef)
mean(mice_bef)

#mice_af <- rnorm(200, mean=21, sd=1.581)
var(mice_af)
mean(mice_af)



# rat data

#rats_bef <- rweibull(200, shape = 10, scale = 20)
rats_bef


#rats_af <- rweibull(200, shape = 9, scale = 21)
rats_af

mice_dataset <- data.frame(mice_bef, mice_af)
mice_dataset


rats_dataset <- data.frame(rats_bef, rats_af)
rats_dataset

#require(ggplot2)

#qplot(data=mice_dataset, geom='density', x=mice_bef, xlab = 'Mice Weight', ylab='Density', main='Mice Before Supplement')
#qplot(data=mice_dataset, geom='density', x=mice_af, xlab = 'Mice Weight', ylab='Density', main='Mice After Supplement')

#qplot(data=rats_dataset, geom='density', x=rats_bef, xlab = 'Rats Weight', ylab='Density', main='Rats Before Supplement')
#qplot(data=rats_dataset, geom='density', x=rats_af, xlab = 'Rats Weight', ylab='Density', main='Rats After Supplement')


#qplot(data=mice_dataset, x=mice_bef, geom='boxplot', main='Mice Before Supplement')
#qplot(data=mice_dataset, x=mice_af, geom='boxplot', main='Mice After Supplement')

#qplot(data=rats_dataset, x=rats_bef, geom='boxplot', main='Rats Before Supplement')
#qplot(data=rats_dataset, x=rats_af, geom='boxplot', main='Rats After Supplement')

# qqplots
qqnorm(mice_bef, main='Mice Before')
qqline(mice_bef)
qqnorm(mice_af, main='Mice After')
qqline(mice_af)

qqnorm(rats_bef, main='Rats Before')
qqline(rats_bef)
qqnorm(rats_af, main='Rats After')
qqline(rats_af)


#shapiro wilk test
shapiro.test(mice_bef)
shapiro.test(mice_af)

shapiro.test(rats_bef)
shapiro.test(rats_af)

t.test(mice_bef, mice_af, paired = TRUE)

wilcox.test(rats_bef, rats_af)

library(fitdistrplus)

r1_w <- fitdist(rats_bef, "weibull")
r1_g <- fitdist(rats_bef, "gamma")
r1_ln <- fitdist(rats_bef, "lnorm")
summary(r1_w)
summary(r1_g)
summary(r1_ln)

r2_w <- fitdist(rats_af, "weibull")
r2_g <- fitdist(rats_af, "gamma")
r2_ln <- fitdist(rats_af, "lnorm")
summary(r2_w)
summary(r2_g)
summary(r2_ln)
