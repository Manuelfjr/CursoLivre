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
q1th$p.value < alpha # True
q1th
interval_estimate1(amos, sigma = -1, alpha = alpha)

# Questao 02
amos <- c(1200,1180,1100,1120,900,1160,1250,1140,
          1300,1190,1290,1110,1100,1100,1060,1220)
alpha = 0.1
mu = 1200

q2th <- z.test(amos,mu,sd(amos),alternative = 'less',conf.level = 1 - alpha)
q2th
q2th$p.value < alpha # True
interval_estimate1(amos, sigma = sd(amos),alpha = alpha)

# Questao 03
amos <- c(4.0,4.1,4.7,3.5,4.2,3.3,6.1,4.8,3.7,5.8,4.7,
          6.3,5.4,3.8,5.7,4.4,4.8,3.9,4.9,5.3,4.6,3.9,
          5.5,4.7,5.1,3.6,4.1,5.3,3.5,4.3)
alpha = 0.05
mu = 5

q3th <- t.test(amos,conf.level = 1-alpha,alternative = 'less',mu=mu)
q3th
q3th$p.value < alpha # False
interval_estimate1(amos, sigma = -1, alpha = alpha)

library(TeachingDemos)
# Questao 04
n  = 703
phat = 0.61
p = 0.5
# seja alpha = 0.05
alpha = 0.05
amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))

q4th <- z.test(amos,mu=p,stdev=sd(amos),conf.level = 1-alpha,
               alternative = 'less')
q4th
interval_estimate1(amos, sigma = sd(amos),alpha = alpha)

# Estatistica do teste
q4th$statistic

# Questao 05
n = 1234
phat = 20/1234
p = 0.01

alpha = 0.05
amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))

q5th <- z.test(amos,mu=p,stde=sd(amos),conf.level = 1-alpha)
q5th
q5th$p.value < alpha # False
interval_estimate1(amos, sigma = sd(amos),alpha = alpha)

# Questao 06
x <- c(145,127,136,142,141,137)
y <- c(143,128,132,138,142,132)
alpha = 0.05
q6th <- t.test(x,y,conf.level = 1 - alpha)
q6th
q6th$p.value < alpha # False

# Questao 07
n1 = 200
n2 = 100
x = 60
y = 50
alpha = 0.05

q7th <- prop.test(x=c(y, x), n=c(n2, n1),
                  conf.level = 1 - alpha,
                  alternative = 'less')
q7th

q7th$p.value < alpha # False

# Questao 08
X <- c(-10,16,-8,9,5,-5,5,-11,25,25)
Y <- c(-8,-3,20,22,3,5,10,14,-21,8)
alpha = 0.1

q8th <- t.test(X,Y,conf.level = 1-alpha)
q8th
q8th$p.value < alpha

# Questao 09
n1 = 100
x = 12
n2 = 120
y = 18
alpha = 0.05

q9th <- prop.test(x=c(x, y), n=c(n1, n2),
                  conf.level = 1 - alpha)
q9th
q9th$p.value < alpha # False

# Questao 10
alpha = 0.05
db <- as.table(rbind(c(115, 56, 39),
                     c(175, 94, 31)))
dimnames(db) = list('Gênero' = c("Feminino",
                               "Masculino"),
                    'Confiança na polícia' = c("Muita",
                                "Alguma",
                                "Multo pouca/Nenhuma"))

q10chq <- chisq.test(db)
q10chq
q10chq$p.value < alpha # True

# Questao 11
alpha = 0.05
db <- as.table(rbind(c(62, 36, 12),
                     c(84, 42, 14),
                     c(24, 22, 24)))
dimnames(db) = list('Opnião do produto' = c("Excelente",
                                            "Satisfatório",
                                            "Insatisfatório"),
                    'Número de tentativas' = c("1 Tentativa",
                                               "2 Tentativas",
                                               "3 Tentativas"))

q11chq <- chisq.test(db)
q11chq
q11chq$p.value < alpha # True

# Questao 12
alpha = 0.05
db <- as.table(rbind(c(43, 35),
                     c(109, 118)))
dimnames(db) = list('Reação' = c("Irritação",
                                 "Nenhuma Irritação"),
                    'Tratamento' = c("Remedio",
                                     "Placebo"))

q12chq <- chisq.test(db)
q12chq
q12chq$p.value < alpha # False, não rejeita h0

# Questão 13
alpha = 0.01
wf <- c(2.19,2.39,2.,7.99,1.98,4.99,1.79,1.69,2.19,1.99)
f <- c(1.35,1.69,2.49,5.99,1.29,3.69,1.33,1.49,1.49,1.59)

q13th <- t.test(wf,f,conf.level = 1 - alpha,alternative='less')
q13th
q13th$p.value < alpha # False, não rejeita h0

# Questao 14
alpha = 0.01
before <- c(37.5,36,39,38,37.8,38.5,36.9,39.4,37.2,38.1,
            39.3,37.5,38.5,39,36.9,37,38.5,39,36.2,36.8)
after <- c(37.8,36.4,37.6,37.2,36.9,37.7,36.8,38.1,36.7,
            37.3,38,37.1,36.6,37.5,37,36.2,37.6,36.8,36.4,
            36.8)
q14th = t.test(after, before,conf.level = 1-alpha,alternative='greater')
q14th
q14th$p.value < alpha # False, não rejeita h0

 