---
date: 'Agosto, 08'
---
**Curso Livre II**

**Aluno:** Manuel Ferreira Junior

**Matricula:** 20180008601 

# Modulo I


**Tarefa 01** Acesse o banco de dados trees no R, utilizando a função data(). Estes dados fornecem as informações sobre o diâmetro ( Girth ), a altura ( Height ) e o volume ( Volume ) de 31 árvores cerejeiras. Faça uma análise sobre a relação linear entre as variáveis Girth e Volume e ajuste um modelo de regressão linear simples para explicar o volume da árvore em função do seu diâmetro. E depois responda as seguintes questões:

**Carregando os dados**
~~~r
data(trees)
attach(trees)
~~~
**A)** Obtenha o gráfico de dispersão. Como você descreveria a relação entre as duas variáveis?
~~~r
> plot(Girth,Volume)
> grid()
> title('Volume ~ Girth')
~~~
![1.0]()

**B)** Qual o grau de correlação linear entre as variáveis?
~~~r
> cor(Girth,Volume)
[1] 0.9671194
~~~
![1]()

**C)** Qual a conclusão do teste para o coeficiente de correlação? Justifique utilizando o p-valor.
~~~r

~~~
![1]()

**D)** Ajuste um modelo de regressão linear simples.
~~~r

~~~
![1]()

**E)** Qual a variável resposta (interesse) e a regressora (explicativa)?
~~~r

~~~
![1]()

**F)** Quais foram os valores estimados dos coeficientes de regressão (o intercepto e a inclinação)? Como é possível interpretá-los?
~~~r

~~~
![1]()

**G)** Trace a reta de estimada no gráfico.
~~~r

~~~
![1]()

**H)** Qual o teste que utilizamos para verificar se a relação de regressão significante? Faça uma conclusão sobre o teste utilizando o respectivo p-valor.
~~~r

~~~
![1]()

**I)** Qual a estatística utilizada para verificarmos se modelo tem um alto poder explicativo para variável resposta? Qual o valor desta estatística neste ajuste? Interprete este valor.
~~~r

~~~
![1]()

**J)** Qual o volume médio previsto para uma árvore com o diâmetro de 13 polegadas?
~~~r

~~~
![1]()
