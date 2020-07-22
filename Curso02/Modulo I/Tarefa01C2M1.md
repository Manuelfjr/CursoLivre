---
date: 'Julho, 22'
---
**Curso Livre II**

**Aluno:** Manuel Ferreira Junior

**Matricula:** 20180008601 

# Modulo I

## **Tarefa 01**

Pacote necessário
~~~r
install.packages('TeachingDemos')
library(TeachingDemos)
~~~
### Questão 01:

$\alpha = 0.05$ 

$H_{0}: \mu \le 42$

$H_{1}: \mu > 42$

**Código :**
~~~r
> amos <- c(40.1,41.2,43.4,43.9,45.0,40.7,45.5,42.6,39.1,43.1,
+           44.8,45.5,43.9,44.1,42.3,41.5,45.8,42.6,40.4,45.2,
+           44.2,40.6,41.9,43.6,37.4,41.8,42.1,42.8,44.7,42.9,
+           44.4,43.3,45.2,45.8,43.7,45.7)
> alpha = 0.05
> mu = 42
> 
> q1th <- t.test(amos,conf.level = 1-alpha,alternative='great',mu=mu)
> q1th

	One Sample t-test

data:  amos
t = 3.1771, df = 35, p-value = 0.001552
alternative hypothesis: true mean is greater than 42
95 percent confidence interval:
 42.50461      Inf
sample estimates:
mean of x 
 43.07778 

> q1th$p.value < alpha # True
[1] TRUE
~~~

**Analise :**
~~~

~~~

### Questão 02:

$\alpha = 0.10$ 

$H_{0}: \mu \ge 1200$

$H_{1}: \mu < 1200$

**Código :**
~~~r
> amos <- c(1200,1180,1100,1120,900,1160,1250,1140,
+           1300,1190,1290,1110,1100,1100,1060,1220)
> alpha = 0.1
> mu = 1200
> 
> q2th <- z.test(amos,mu,sd(amos),alternative = 'less',conf.level = 1 - alpha)
> q2th$p.value < alpha # True
[1] TRUE
~~~

**Analise :**
~~~

~~~

### Questão 03:

$\alpha = 0.05$ 

$H_{0}: \mu \ge 5$

$H_{1}: \mu < 5$

**Código :**
~~~r
> amos <- c(4.0,4.1,4.7,3.5,4.2,3.3,6.1,4.8,3.7,5.8,4.7,
+           6.3,5.4,3.8,5.7,4.4,4.8,3.9,4.9,5.3,4.6,3.9,
+           45.5,4.7,5.1,3.6,4.1,5.3,3.5,4.3)
> alpha = 0.05
> mu = 5
> 
> q3th <- t.test(amos,conf.level = 1-alpha,alternative = 'less',mu=mu)
> q3th$p.value < alpha # False
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 04:

$\alpha = 0.05$ 

$H_{0}: p \ge 0.50$

$H_{1}: p < 0.50$

**Código :**
~~~r
> n  = 703
> phat = 0.61
> p = 0.5
> # seja alpha = 0.05
> alpha = 0.05
> amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))
> 
> q4th <- z.test(amos,mu=p,stde=sd(amos),conf.level = 1-alpha,
+                alternative = 'less')
> 
> # Estatistica do teste
> q4th$statistic
       z 
5.989166 
~~~

**Analise :**
~~~

~~~

### Questão 05:

$\alpha = 0.05$ 

$H_{0}: p = 0.01$

$H_{1}: p \ne 0.01$

**Código :**
~~~r
> n = 1234
> phat = 20/1234
> p = 0.01
> 
> alpha = 0.05
> amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))
> 
> q5th <- z.test(amos,mu=p,stde=sd(amos),conf.level = 1-alpha)
> 
> q5th$p.value < alpha # False
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 06:

$\alpha = 0.05$ 

$H_{0}: \mu_{x} = \mu_{y}$

**Código :**
~~~r
> x <- c(145,127,136,142,141,137)
> y <- c(143,128,132,138,142,132)
> alpha = 0.05
> q6th <- t.test(x,y,conf.level = 1 - alpha)
> q6th

	Welch Two Sample t-test

data:  x and y
t = 0.60495, df = 9.9845, p-value = 0.5587
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -5.815291 10.148624
sample estimates:
mean of x mean of y 
 138.0000  135.8333 

> q6th$p.value < alpha # False
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 07: **

$\alpha = 0.05$ 

$H_{0}: \mu_{y} \ge \mu_{x}$

**Código :**
~~~r
> n1 = 200
> n2 = 100
> x = 60
> y = 50
> alpha = 0.05
> 
> q7th <- prop.test(x=c(y, x), n=c(n2, n1),
+                   conf.level = 1 - alpha,
+                   alternative = 'less')
> q7th

	2-sample test for equality of proportions with continuity correction

data:  c(y, x) out of c(n2, n1)
X-squared = 10.638, df = 1, p-value = 0.9994
alternative hypothesis: less
95 percent confidence interval:
 -1.0000000  0.3055035
sample estimates:
prop 1 prop 2 
   0.5    0.3 

> 
> q7th$p.value < alpha # False
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 08:

$\alpha = 0.1$ 

$H_{0}: \mu_{x} = \mu_{y}$

**Código :**
~~~r
> X <- c(-10,16,-8,9,5,-5,5,-11,25,25)
> Y <- c(-8,-3,20,22,3,5,10,14,-21,8)
> alpha = 0.1
> 
> q8th <- t.test(X,Y,conf.level = 1-alpha)
> q8th

	Welch Two Sample t-test

data:  X and Y
t = 0.016695, df = 17.964, p-value = 0.9869
alternative hypothesis: true difference in means is not equal to 0
90 percent confidence interval:
 -10.28768  10.48768
sample estimates:
mean of x mean of y 
      5.1       5.0 

> q8th$p.value < alpha
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 09:

$\alpha = 0.05$ 

$H_{0}: \mu_{x} = \mu_{y}$

**Código :**
~~~r
> n1 = 100
> x = 12
> n2 = 120
> y = 18
> alpha = 0.05
> 
> q9th <- prop.test(x=c(x, y), n=c(n1, n2),
+                   conf.level = 1 - alpha)
> q9th

	2-sample test for equality of proportions with continuity correction

data:  c(x, y) out of c(n1, n2)
X-squared = 0.20102, df = 1, p-value = 0.6539
alternative hypothesis: two.sided
95 percent confidence interval:
 -0.12937825  0.06937825
sample estimates:
prop 1 prop 2 
  0.12   0.15 

> q9th$p.value < alpha # False
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 10:

$\alpha = 0.05$ 

$H_{0}:$ Gênero é independente da confiança na Polícia

$H_{1}:$ Gênero não é independente da confiança na Polícia

**Código :**
~~~r
> alpha = 0.05
> db <- as.table(rbind(c(115, 56, 39),
+                      c(175, 94, 31)))
> dimnames(db) = list('Gênero' = c("Feminino",
+                                "Masculino"),
+                     'Confiança na polícia' = c("Muita",
+                                 "Alguma",
+                                 "Multo pouca/Nenhuma"))
> 
> q10chq <- chisq.test(db)
> q10chq

	Pearson s Chi-squared test

data:  db
X-squared = 7.2997, df = 2, p-value = 0.02599

> q10chq$p.value < alpha # True
[1] TRUE
~~~

**Analise :**
~~~

~~~

### Questão 11:

$\alpha = 0.05$ 

$H_{0}:$ Opnião sobre o produto é independente do número de tentativas

$H_{1}:$ Opnião sobre o produto não é independente do número de tentativas

**Código :**
~~~r
> alpha = 0.05
> db <- as.table(rbind(c(62, 36, 12),
+                      c(84, 42, 14),
+                      c(24, 22, 24)))
> dimnames(db) = list('Opnião do produto' = c("Excelente",
+                                             "Satisfatório",
+                                             "Insatisfatório"),
+                     'Número de tentativas' = c("1 Tentativa",
+                                                "2 Tentativas",
+                                                "3 Tentativas"))
> 
> q11chq <- chisq.test(db)
> q11chq

	Pearson s Chi-squared test

data:  db
X-squared = 26.288, df = 4, p-value = 2.768e-05

> q11chq$p.value < alpha # True
[1] TRUE
~~~

**Analise :**
~~~

~~~

### Questão 12:

$\alpha = 0.05$ 

$H_{0}:$ O tratamento é independente da Reação

$H_{1}:$ O tratamento não é independente da Reação

**Código :**
~~~r
> alpha = 0.05
> db <- as.table(rbind(c(43, 35),
+                      c(109, 118)))
> dimnames(db) = list('Reação' = c("Irritação",
+                                  "Nenhuma Irritação"),
+                     'Tratamento' = c("Remedio",
+                                      "Placebo"))
> 
> q12chq <- chisq.test(db)
> q12chq

	Pearson's Chi-squared test with Yates' continuity correction

data:  db
X-squared = 0.90687, df = 1, p-value = 0.3409

> q12chq$p.value < alpha # False, não rejeita h0
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 13:

$\alpha = 0.01$ 

$H_{0}:$ $\mu_{wf} \ge \mu_{f}$

$H_{1}:$ $\mu_{wf} < \mu_{f}$

**Código :**
~~~r
> alpha = 0.01
> wf <- c(2.19,2.39,2.,7.99,1.98,4.99,1.79,1.69,2.19,1.99)
> f <- c(1.35,1.69,2.49,6.99,1.29,3.69,1.33,1.49,1.49,1.59)
> 
> q13th <- t.test(wf,f,conf.level = 1 - alpha,alternative='less')
> q13th

	Welch Two Sample t-test

data:  wf and f
t = 0.67873, df = 17.755, p-value = 0.747
alternative hypothesis: true difference in means is less than 0
99 percent confidence interval:
     -Inf 2.764016
sample estimates:
mean of x mean of y 
     2.92      2.34 

> q13th$p.value < alpha # False, não rejeita h0
[1] FALSE
~~~

**Analise :**
~~~

~~~

### Questão 14:

$\alpha = 0.01$ 

$H_{0}:$ $\mu_{after} \le \mu_{before}$

$H_{1}:$ $\mu_{after} > \mu_{before}$

**Código :**
~~~r
> alpha = 0.01
> before <- c(37.5,36,39,38,37.8,38.5,36.9,39.4,37.2,38.1,
+             39.3,37.5,38.5,39,36.9,37,38.5,39,36.2,36.8)
> after <- c(37.8,36.4,37.6,37.2,36.9,37.7,36.8,38.1,36.7,
+             37.3,38,37.1,36.6,37.5,37,36.2,37.6,36.8,36.4,
+             36.8)
> q14th = t.test(after, before,conf.level = 1-alpha,alternative='greater')
> q14th

	Welch Two Sample t-test

data:  after and before
t = -2.7829, df = 29.164, p-value = 0.9953
alternative hypothesis: true difference in means is greater than 0
99 percent confidence interval:
 -1.375608       Inf
sample estimates:
mean of x mean of y 
   37.125    37.855 

> q14th$p.value < alpha # False, não rejeita h0
[1] FALSE
~~~

**Analise :**
~~~

~~~
