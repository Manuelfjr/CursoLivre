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
### **Questão 01:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: \mu \le 42 \\ H_{1}: \mu > 42" title="\large 1" />

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
> q1th$p.value < alpha # True
[1] TRUE
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

> interval_estimate1(amos, sd(amos), alpha = alpha)
      mean df        a        b
1 43.07778 36 42.41289 43.74267
~~~

**Analise :**
~~~
Rejeita-se a hipótese nula, a um nível de significância de 5%, de que a média populacional é inferior a 42. Verifica-se também que, a um nível de confiança de 95%, a verdeira média populacional está entre 42 e 44.
~~~

### **Questão 02:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.10 \\ H_{0}: \mu \ge 1200 \\ H_{1}: \mu < 1200" title="\large 2" />

**Código :**
~~~r
> amos <- c(1200,1180,1100,1120,900,1160,1250,1140,
+           1300,1190,1290,1110,1100,1100,1060,1220)
> alpha = 0.1
> mu = 1200
> 
> q2th <- z.test(amos,mu,sd(amos),alternative = 'less',conf.level = 1 - alpha)
> q2th

	One Sample z-test

data:  amos
z = -1.9987, n = 16.000, Std. Dev. = 97.562, Std. Dev. of the sample
mean = 24.390, p-value = 0.02282
alternative hypothesis: true mean is less than 1200
90 percent confidence interval:
     -Inf 1182.508
sample estimates:
mean of amos 
     1151.25 

> q2th$p.value < alpha # True
[1] TRUE
> interval_estimate1(amos, sd(amos), alpha = alpha)
     mean df        a        b
1 1151.25 16 1111.131 1191.369
~~~

**Analise :**
~~~
Rejeita-se a hipótese nula, a um nível de significância de 10%, de que a média populacional do tempo de vida das lampadas da marca X é superior a 1200. Verifica-se também que, a um nível de confiança de 90%, o tempo de vida médio das lâmpadas da marca X esta entre 1111 e 1191.
~~~

### **Questão 03:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: \mu \ge 5\\ H_{1}: \mu < 5" title="\large 3" />

**Código :**
~~~r
> amos <- c(4.0,4.1,4.7,3.5,4.2,3.3,6.1,4.8,3.7,5.8,4.7,
+           6.3,5.4,3.8,5.7,4.4,4.8,3.9,4.9,5.3,4.6,3.9,
+           5.5,4.7,5.1,3.6,4.1,5.3,3.5,4.3)
> alpha = 0.05
> mu = 5
> 
> q3th <- t.test(amos,conf.level = 1-alpha,alternative = 'less',mu=mu)
> q3th

	One Sample t-test

data:  amos
t = -2.6814, df = 29, p-value = 0.005984
alternative hypothesis: true mean is less than 5
95 percent confidence interval:
     -Inf 4.853466
sample estimates:
mean of x 
      4.6 

> q3th$p.value < alpha # False
[1] TRUE
> interval_estimate1(amos, sigma = -1, alpha = alpha)
  mean df        a        b
1  4.6 29 4.294905 4.905095
~~~

**Analise :**
~~~
Rejeita-se a hipótese nula, a um nível de significância de 5%, de que o tempo médio de reação após a utilização desse medicamento é superior ou igual a 5. Verifica-se também que, a um nível de confiança de 95%, o tempo médio de reação está entre 4 e 5.
~~~

### **Questão 04:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: p \ge 0.50\\ H_{1}: p < 0.50" title="\large 4" />

**Código :**
~~~r
> n  = 703
> phat = 0.61
> p = 0.5
> # seja alpha = 0.05
> alpha = 0.05
> amos <- c(rep(1,round(n*phat)), rep(0,n*(1-phat)))
> 
> q4th <- z.test(amos,mu=p,stdev=sd(amos),conf.level = 1-alpha,
+                alternative = 'less')
> q4th

	One Sample z-test

data:  amos
z = 5.9892, n = 703.000000, Std. Dev. = 0.488043, Std. Dev. of the
sample mean = 0.018407, p-value = 1
alternative hypothesis: true mean is less than 0.5
95 percent confidence interval:
      -Inf 0.6405184
sample estimates:
mean of amos 
   0.6102418 

> interval_estimate1(amos, sd(amos), alpha = 0.05)
       mean  df        a         b
1 0.6102418 703 0.574165 0.6463186
> 
> # Estatistica do teste
> q4th$statistic
       z 
5.989166 
~~~

**Analise :**
~~~
Considerando um nível de significância de 5%, a estatística do teste é de 5.99 aproximadamente. Não rejeitamos a hipótese de que a proporção de trabalhadores que encontraram emprego através de uma rede amigos é superior a 50%, sendo a verdadeira proporção de trabalhadores que conseguiram emprego por uma rede de amigos esta entre 0.57 e 0.65, a um nível de confiança de  95%.
~~~

### **Questão 05:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: p = 0.01\\ H_{1}: p \ne 0.01" title="\large 5" />

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
> q5th

	One Sample z-test

data:  amos
z = 1.7262, n = 1.2340e+03, Std. Dev. = 1.2632e-01, Std. Dev. of the
sample mean = 3.5961e-03, p-value = 0.08432
alternative hypothesis: true mean is not equal to 0.01
95 percent confidence interval:
 0.009159296 0.023255615
sample estimates:
mean of amos 
  0.01620746 

> q5th$p.value < alpha # False
[1] FALSE
> interval_estimate1(amos, sigma = sd(amos),alpha = alpha)
        mean   df           a          b
1 0.01620746 1234 0.009159296 0.02325562
~~~

**Analise :**
~~~
Não rejeita-se a hipótese nula, a um nivel de significância de 5%, de que 1% das vendas é cobrado em excesso. Considerando um nível de confiança de 95%, a verdadeira proporção de vendas cobrada em excesso esta entre no minímo 0.9% e no maximo 2.32%.
~~~

### **Questão 06:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: \mu_{x} = \mu_{y}" title="\large 6" />

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
> q6th$conf.int
[1] -5.815291 10.148624
attr(,"conf.level")
[1] 0.95
~~~

**Analise :**
~~~
Não rejeita-se a hipótese nula, a um nível de significância 5%, de que as peças produzidas pelas maquinas A e B, possuem a mesma homogeneidade quanto à resistência à tensão.
~~~

### **Questão 07:** 

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: p_{y} \ge p_{x}" title="\large 7" />

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
> q7th$conf.int
[1] -1.0000000  0.3055035
attr(,"conf.level")
[1] 0.95
~~~

**Analise :**
~~~
Não rejeita-se a hipotese nula, a um nível de significância de 5%, de que a proporção dos motoristas adolescentes é maior do que a proporção dos motoristas adultos. 
~~~

### **Questão 08:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.1 \\ H_{0}: \mu_{x} = \mu_{y}" title="\large 8" />

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
> q8th$conf.int
[1] -10.28768  10.48768
attr(,"conf.level")
[1] 0.9
~~~

**Analise :**
~~~
Não rejeita-se a hipótese nula, a um nível de significância de 10%, de que o desempenho médio dos dois analistas, quanto a precisão na análise da substância que contém carbono, possui igualdade.
~~~

### **Questão 09:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: p_{x} = p_{y}" title="\large 9" />

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
> q9th$conf.int
[1] -0.12937825  0.06937825
attr(,"conf.level")
[1] 0.95
~~~

**Analise :**
~~~
Não rejeita-se a hipótese nula, a um nível de significância de 5%, de que os dois escritórios não apresentam diferença significativa entre suas taxas de aprovação.
~~~

### **Questão 10:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: \text{G\^enero \'e independente da confian\c{c}a na Pol\'icia }\\ H_{1}: \text{G\^enero n\~ao \'e independente da confian\c{c}a na Pol\'icia }" title="\large 10" />

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
Rejeita-se a hipótese nula, a um nivel de significância de 5%, de que o gênero é independente da confiança que o povo deposita na polícia, ou seja, de que não há restrições entre as variáveis.
~~~

### **Questão 11:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: \text{Opni\~ao sobre o produto \'e independente do n\'umero de tentativas}\\ H_{1}: \text{Opni\~ao sobre o produto  n\~ao \'e independente do n\'umero de tentativas}" title="\large 11" />

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
Rejeita-se a hipótese nula, a um nivel de significância de 5%, de que a opnião do produto sobre o produto é indenpendente do número de tentativas, ou seja, de que não existe relação entre a resposta e o número de tentativas.
~~~

### **Questão 12:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.05 \\ H_{0}: \text{O tratamento \'e independente da Rea\c{c}\~ao}\\ H_{1}: \text{O tratamento n\~ao \'e independente da Rea\c{c}\~ao}" title="\large 12" />

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
Não rejeita-se a hipótese nula, a um nível de significância de 5%, de que o tratamento independe da reação, ou seja, há evidências suficientes para afirmar de que o tratamento independe da reação. 
~~~

### **Questão 13:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.01 \\ H_{0}: \mu_{wf} \ge \mu_{f}\\ H_{1}: \mu_{wf} < \mu_{f}" title="\large 13" />

**Código :**
~~~r
> alpha = 0.01
> wf <- c(2.19,2.39,2.,7.99,1.98,4.99,1.79,1.69,2.19,1.99)
> f <- c(1.35,1.69,2.49,5.99,1.29,3.69,1.33,1.49,1.49,1.59)
> 
> q13th <- t.test(wf,f,conf.level = 1 - alpha,alternative='less')
> q13th

	Welch Two Sample t-test

data:  wf and f
t = 0.85206, df = 16.681, p-value = 0.7969
alternative hypothesis: true difference in means is less than 0
99 percent confidence interval:
     -Inf 2.732605
sample estimates:
mean of x mean of y 
     2.92      2.24 

> q13th$p.value < alpha # False, não rejeita h0
[1] FALSE
~~~

**Analise :**
~~~
Não rejeita-se a hipóse nula, a um nível de significância de 1%, de que a média dos preços do Whole Foods Market é maior do que o Fairway para ambos Whole Foods Market e Fairway.
~~~

### **Questão 14:**

<img src="https://latex.codecogs.com/svg.latex?\large&space;\\ \alpha = 0.01 \\ H_{0}: \mu_{after} \le \mu_{before}\\ H_{1}: \mu_{after} > \mu_{before}" title="\large 14" />

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
Não rejeita-se a hipótese nula, a um nível de significância de 1%, de que houve diminuição da temperatura dos indivíduos, ou seja, não há evidências suficiente para afirmar que não houve diminuição da temperatura dos indivíduos.
~~~
