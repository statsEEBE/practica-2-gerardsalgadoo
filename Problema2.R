#Codigo para problema 2
mis_dades <- iris
mis_dades

# Calcula la recta de regressió èr mínims quadrats entre les variables
# Sepal.Lenght i Petal.Lenght
mis_dades$Petal.Lenght
x <- mis_dades$Petal.Length
y <- mis_dades$Sepal.Length
plot(x,y)

# Una vegada amb la recta de rgressió troba el valor de la pendent m i la
# intersecció amb l'eix y b.
x_bar <- mean(x) # Media de x
y_bar <- mean(y) # Media de y

m <- sum((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2) # Valor a la dreta
m # Valor avall

b <- y_bar - m*x_bar
b

# Quina és la predicció quan Petal.Lenght=1.5?
prediccio1.5 <- m*1.5 + b
prediccio1.5

# Para crear la LINIA DE REGRESION
x_pred <- x
x
y_pred <- m*x_pred+b
plot(x,y)
lines(x_pred, y_pred)

# El COEF. DE DETERMINACIÓN (R^2) és como MÁXIMO = 1 (pred. 100%) i
# como MÍNIMO = 0.
Rsq <- sum((y_pred - y_bar)^2)/sum((y-y_bar)^2)
Rsq

# COEF. DE CORRELACIÓN = R
cor <- sqrt(Rsq)
cor

# Comando per calcular el coef. de correlació manualment i trobar prediccions.
modelo <- lm(y~x)
modelo
summary(modelo)
cor.test(x,y)
y_pred2 <- predict(modelo, data.frame(x=1.5))
y_pred2
