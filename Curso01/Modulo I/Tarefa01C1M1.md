**Curso Livre I**

**Aluno:** Manuel Ferreira Junior

**Matricula:** 20180008601 

# Modulo I

## **Tarefa 01**

### **Questão 01. Crie um objeto com estes dados: 9, 0, 10, 13, 15, 17, 18, 17, 22, 11, 15 e chame-o de temp. Agora faça as seguintes transformações com esses dados:**
~~~r
temp <- c(9,0,10,13,15,17,18,17,22,11,15)

# Todas as operações serão efetuadas termo a termo, dentro da variavel temp,
# sem armazenar internamente.
~~~

**A)** raiz quadrada de **temp**;

~~~r
sqrt(temp)
~~~

**B)** log natural de **temp**;

~~~r
log(temp)
~~~

**C)** log(x + 1) de **temp**;

~~~r
log(temp + 1)
~~~

**D)** eleve os valores de **temp** ao quadrado.

~~~r
(temp)**(2)
~~~

### **Questão 02. Suponha que você marcou o tempo que leva para chegar a cada uma de suas parcelas no campo. Os tempos em minutos foram: 18, 14, 14, 15, 14, 34, 16, 17, 21, 26. Passe estes valores para o RStudio, chame o objeto de tempo. Usando funções do RStudio ache o tempo máximo, mı́nimo e qual o quarto elemento que você levou gasta para chegar em suas parcelas.**
~~~r
tempo <- c(18, 14, 14, 15, 14, 34, 16, 17, 21, 26)

max(tempo) # Máximo
min(tempo) # Mínimo

# Não entendi oque quis dizer com "que você levou gasta para chegar em suas
# parcelas", achei que ficou meio confuso, logo eu so achei que deveria 
# achar o quarto elemento da varaivel tempo

tempo[4]
~~~

### **Questão 03. Ops, o valor 34 foi um erro, ele na verdade é 15. Sem digitar tudo novamente, e usando colchetes [ ], mude o valor e calcule novamente o tempo máximo e o tempo mı́nimo.**
~~~r
tempo[max(tempo) == tempo] <- 15
~~~

### **Questão 04. Execute os comandos e veja o resultado:**
~~~r
x <- c(1,3,5,7,9,0)
y <- c(2,3,5,7,11,13)
~~~

**A) x + 1**

~~~r
> x+1  # Uma soma vetorizada, cada valor de x esta sendo somado mais 1
[1]  2  4  6  8 10  1
~~~

**B) y * 2**

~~~r
> x*2 # Uma multiplicação de cada termo de x por 2
[1]  2  6 10 14 18  0
~~~

**C) length(x) e length(y)**

~~~r
> length(x) # Tamanho do vetor x
[1] 6
> length(y) # Tamanho do vetor y
[1] 6
~~~

**D) x + y**

~~~r
> x + y # Soma termo a termo de cada entrada do vetor x mais cada 
        # respectiva entrada de y
[1]  3  6 10 14 20 13 
~~~

**E) y[3]**

~~~r
> y[3] # Acessa a terceira entrada, da esquerda para a direita do 
       # vetor y, nesse caso, o valor 5
[1] 5

~~~
**F) y[-3]**

~~~r
> y[-3] # Esta tirando o valor 5, na terceira posição de y, porém 
        # sem alterar internamente em y
[1]  2  3  7 11 13
~~~
