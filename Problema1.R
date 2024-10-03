#Codigo para problema 1

# Trobeu el coef. de determinació o de bondat d'ajust
Rsq <- 0.192 #(multiple r-squared)
R <- sqrt(Rsq)

# Que variación espararemos del valor de mercado para 1 augmento de 1 unidad?
m <- 0.0658

# Predicción del valor para activos = 647.1
m <- 0.0658
b <- 11.768
a <- 647.1
y <- m*a + b
y
