install.packages('mlr')
install.packages('mlbench')
install.packages('rpart.plot')
library(mlr)
library(mlbench)
library(rpart.plot)

#Obtenha um conjunto de dados de câncer de mama usando os
# seguintes comandos (precisa instalar o pacote mlbench):

data(BreastCancer, package = "mlbench")
df = BreastCancer
df$Id = NULL
cl = df$Class
indx = sapply(df, is.factor)
df[indx] = lapply(df[indx], function(x) as.numeric(as.character(x)))
df$Class = cl
df$Bare.nuclei = NULL

# Com os dados carregados, separe-os em conjunto de  
# treinamento e de teste e use a biblioteca mlr como vimos: 

set.seed(0)
trein_index <- sample(1:nrow(df), 0.8 * nrow(df))
test_index <- setdiff(1:nrow(df), trein_index)
trein <- df[trein_index,]
test <- df[test_index,]

# Crie a tarefa de classificação (a variável alvo é "Class")

taskclf <- makeClassifTask(data=trein, target = 'Class', positive = 'benign')

# Treine os modelos que vimos na primeira aula (e outros, se desejar)

# Decision Tree Classifier
tree <- makeLearner('classif.rpart', predict.type = 'prob')
tree_trein <- train(learner = tree, task = taskclf)
rpart.plot(tree_trein$learner.model, roundint = F)

# K-Nearest Neighbors (KNN)
knn <- makeLearner('classif.knn')
knn_trein <- train(learner = knn, task = taskclf)

# Logistic Regression
reg_log <- makeLearner('classif.logreg', predict.type = 'prob')
reg_log_trein <- train(learner = reg_log, task = taskclf)

# Avalie os modelos treinados usando o conjunto de teste 
# e veja qual teve melhor desempenho

# Decision Tree Classifier
tree_predict <- predict(tree_trein, newdata = test)
calculateROCMeasures(tree_predict)
calculateConfusionMatrix(tree_predict)

# K-Nearest Neighbors (KNN)
knn_predict <- predict(knn_trein, newdata = test)
calculateROCMeasures(knn_predict)
calculateConfusionMatrix(knn_predict)

# Logistic Regression
reg_log_predict <- predict(reg_log_trein, newdata = test)
calculateROCMeasures(reg_log_predict)
calculateConfusionMatrix(reg_log_predict)
