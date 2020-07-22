# Curso II ----------------------------------------------------------------




# Modulo I ----------------------------------------------------------------
# Tarefa 01
library(TeachingDemos)
# Questão 1
amos <- c(40.1,41.2,43.4,43.9,45.0,40.7,45.5,42.6,39.1,43.1,
          44.8,45.5,43.9,44.1,42.3,41.5,45.8,42.6,40.4,45.2,
          44.2,40.6,41.9,43.6,37.4,41.8,42.1,42.8,44.7,42.9,
          44.4,43.3,45.2,45.8,43.7,45.7)
alpha = 0.05
mu = 42

q1th <- t.test(amos,conf.level = 1-alpha,alternative='great',mu=mu)
q1th$p.value < alpha

# Questao 02
amos <- c(1200,1180,1100,1120,900,1160,1250,1140,
          1300,1190,1290,1110,1100,1100,1060,1220)
alpha = 0.05
mu = 1200

q2th <- z.test(amos,mu,sd(amos),alternative = 'less',conf.level = 1 - alpha)
q2th$p.value < alpha

# Questao 03
amos <- c(4.0,4.1,4.7,3.5,4.2,3.3,6.1,4.8,3.7,5.8,4.7,
          6.3,5.4,3.8,5.7,4.4,4.8,3.9,4.9,5.3,4.6,3.9,
          45.5,4.7,5.1,3.6,4.1,5.3,3.5,4.3)
alpha = 0.05
mu = 5

q3th <- t.test(amos,conf.level = 1-alpha,alternative = 'less',mu=mu)
q3th$p.value < alpha 

# Questao 04
n  = 703
phat = 0.61
p = 0.5
# seja alpha = 0.05
alpha = 0.05
amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))

q4th <- z.test(amos,mu=p,stde=sd(amos),conf.level = 1-alpha,
               alternative = 'less')

# Estatistica do teste
q4th$statistic

# Questao 05
n = 1234
phat = 20/1234
p = 0.01

alpha = 0.05
amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))

q5th <- z.test(amos,mu=p,stde=sd(amos),conf.level = 1-alpha)

q5th$p.value < alpha

# Questao 06

