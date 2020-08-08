# Questão 01
data(trees)
trees
attach(trees)
# A)
plot(Girth,Volume)
title('Volume ~ Girth')

# B)
cor(Girth,Volume)

# C)
cor.test(Volume, Girth)

# D)
gvmodel <- lm(Volume ~ Girth)

# E)
# Para esse modelo, consideremos que a variavel explicativa é
# o diâmetro da arvore e a variavel resposta é o volume da 
# arvore.

# F)
coefs <- gvmodel$coefficients
coefs                    

# G)
plot(Girth, Volume)
abline(gvmodel, col="gray")

# H)

# I)

# J)
predict(gvmodel,newdata=data.frame(Girth=c(13)),
        interval="prediction")
