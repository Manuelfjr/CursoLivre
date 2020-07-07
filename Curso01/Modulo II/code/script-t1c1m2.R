# Tarefa 01 / CursoI ------------------------------------------------------
url = '/home/manuel/CursoLivre/Curso01/Modulo II/data/trabalhadores.txt'
tbr = read.delim(url)
db = data.frame(tbr) 

empregado =  db$empregado
salario = db$salario 
idade = db$idade
situacao = db$situacao

# Função que sera usado para calcular a moda nos itens 11 e 12
getmode <- function(x){
  z <- table(as.vector(x)); names(z)[z == max(z)]
}
getmode(salario)
install.packages('descr')
install.packages('fdth')
library(descr)
library(fdth)

# 1) Transforme a variável situacao em um fator, indicando os rótulos de 
# suas classes.
factors <-  c('ativo','demitido')
situacao  <-  factor(db$situacao,
                     levels=min(db$situacao):max(db$situacao),
                     labels=factors)

# 2) Construa uma tabela completa de frequências para a variável situacao.
# Tabela de frequencia completa
tf.situacao = freq(situacao)
tf.situacao

# 3) Construa um gráfico de barras ou colunas para a variável situacao.
# O grafico ja foi gerado com a tabela da alternativa anterior :
freq(situacao)
title('Grafico de barras da variavel situacao')
# Será retornado logo apos rodar as linhas acima, o grafico.

# 4) Construa um gráfico de setores para a variável situacao.
porc = round(table(situacao)*100/sum(table(situacao)),2)
rotulos = paste("(",porc,"%)",sep="")
pie(table(situacao),labels = rotulos, col=palette())
legend(1,1,levels(situacao),col=palette(),pch = rep(20,2))
title('Grafico de setores da variavel situacao')

# 5) Construa uma tabela de frequências por classes com a variável 
# salario.
tbsal.classes = fdt(salario)
tbsal.classes

# 6) Construa uma tabela de frequência por classes com a variável idade.
tbid.classes = fdt(idade)
tbid.classes

# 7) Construa um boxplot para a variável salario por situação atual de 
# emprego.
boxplot(salario ~ situacao)
title('Boxplot da situacao atual do empregado por salario')
grid()

# 8) Construa um gráfico de dispersão entre as variáveis salario e idade.
plot(salario,idade)
title('Grafico de dispersao entre as variaveis salario e idade')
grid()
cor(salario,idade)

# 9) Construa um histograma para a variável salario e insira a curva
# gaussiana.
hist(salario,xlab = "Salario",ylab = "Densidade",
     col = heat.colors(6),freq = F,
     main = "Histograma da variavel salario",
     xlim=c(10000,50000))
curve(dnorm(x,mean = mean(salario),
            sd = sd(salario)),
      add = T)
grid()

# 10) Construa um histograma para a variável idade e insira a curva 
# gaussiana.
hist(idade,xlab = "Idade",ylab = "Densidade",
     col = heat.colors(6),
     freq = F,main = "Histograma da variavel idade",
     xlim=c(10,60))
curve(dnorm(x,mean = mean(idade),sd = sd(idade)),add = T)
grid()


# 11) Calcule as medidas de tendência central e de dispersão da 
# variável salario.
c(summary(salario))
c('Mod.' = as.numeric(getmode(salario)))

# 12) Calcule as medidas de tendência central e de dispersão da 
# variável idade.
c(summary(idade))
c('Mod.' = as.numeric(getmode(idade)))

# 13) Calcule média, mediana e o desvio-padrão da variável idade
# por situação de emprego.
mean.idsit = tapply(idade,situacao,mean)
median.idsit = tapply(idade,situacao,median)
sd.idsit = tapply(idade,situacao,sd)
sit.id = data.frame(row.names = c('Média',
                         'Mediana',
                         'Desvio-Padrao'),
                  'ativo' = c(mean.idsit[1],
                                    median.idsit[1],
                                    sd.idsit[1]),
                  'demitido' = c(mean.idsit[2],
                                    median.idsit[2],
                                    sd.idsit[2]))
sit.id

# 14) Construa uma tabela entre as variáveis salario e situacao,
# utilizando o comando compmeans.
tb.comp = compmeans(salario,situacao)
title('Boxplot do salario por situacao do individuo')
grid()
