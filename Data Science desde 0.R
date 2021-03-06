##########################################
#                                        #
#          DATA SCIENCE DESDE 0          #
#             MIGUEL SENCIE              #   
#          msencie@unprg.edu.pe          #
#               Informe:                 #
#  https://rpubs.com/TeamMM/DataScience0 #
#                                        #
##########################################

 #
###"R, una calculadora m�s"
 #

#Calcular las siguientes operaciones:
2+7+8
5-2-10
25*12
124/3

#Aumentamos el nivel:
log(10)
7^2
81^(1/2); sqrt(81)
exp(1); pi

#Para casa:
  
##Valor absoluto de -3.5
abs(-3.5)
##Factorial 12
factorial(12)
##Redondear pi a 5 cifras decimales
round(pi, 5)

 #
###"Verdad o Falso"
 #

#Hacemos las siguientes comparaciones num�ricas

1254 > 1687

1487 == 1874

1887 <= 2020

2020 != 2021

round(pi,7)

round(pi,2) < round(pi, 5)

#Ahora con texto, que suceder�a?

"M" != "m"

"Texto" == "texto"

"a" < "A"

"A" < "Z"

 #
###"Y si les asignamos nombres?"
 #

x <- 15
x

x = 35
x

#Tipo de datos m�s comunes
nombre = "Miguel"
class(nombre)

edad = 23
class(edad)

sexo = TRUE #T: Masculino(1) F: Femenino(0)
class(sexo)

estatura = 1.65
class(estatura)

##################
#    VECTORES    #
##################

#Funci�n c
v1 <- c(1,2,3,4,5)
v1
class(v1)

v2 <- c("Per�", "Bolivia", "Argentina")
v2
class(v2)

v3 <- c(TRUE, FALSE, T, F)
v3
class(v3)

c(v1, v2, v3, "DSRP")

#Funci�n rep
rep("a", 15)

rep(v1, times = 5) #Repite todo el vector 5 veces

rep(v1, each = 5) #Repite cada entrada del vector 5 veces

rep(v1, times = c(5,2,7,10,3)) #Repite cada entrada del vector un n�mero de determinado de veces

#Funci�n seq
seq(1,10,by = 2) #Sucesi�n con inicio 1 y fin 10, paso 2. Corta la sucesi�n hasta un donde se complete el paso

seq(30, 10,by = -3) #Sucesi�n con inicio 30 y fin 10, paso -3

15:35 #Sucesi�n de paso 1, en forma consecutiva de 15 a 35

seq(2, by = 2, length.out = 10) #10 primeros numeros pares

#Operaciones con vectores
x = seq(2, by = 2, length.out = 10)
y = sqrt(x)

3*x
5+x
x+y
x*y

length(x) #Longitud del vector x

max(x); min(x) #M�ximo y m�nimo del vector x

sum(x) #Suma de las entradas del vector

mean(x); sum(x)/length(x) #Media del vector x

sort(x); rev(sort(x)) #Ordena las entradas del vector x

cumsum(x) #Suma acumulada de las entradas del vector x

##################
#    MATRICES    #
##################

#Funci�n "matrix"

x = 1:20
x

matrix(x,nrow = 5) #Entradas ordenadas por columnas

matrix(x, nrow = 5, byrow = TRUE) #Entradas ordenadas por filas

matrix(1, nrow = 3, ncol = 4)

#Funci�n "cbind" y "rbind"

a = 1:5
b = rep(1,5)
c = a^2

cbind(a,b,c) #Por columnas

rbind(a,b,c) #Por filas

#Operaciones y funciones con matrices

A = rbind(a,b,c)
B = cbind(a,b,c)
C = matrix(1:15, nrow = 3, byrow = TRUE)

7*B

A*C #Multiplicaci�n entrada por entrada de cada matriz

D = A%*%B #Multiplicaci�n de matrices
D

t(B) #Tranpuesta de B
det(D) #Solo matriz cuadrada
solve(D) #Solo matriz cuadrada e invertible
qr(D)$rank #Rango de la matriz
diag(D) #Diagonal de la matriz D
diag(1, nrow = 5) #Diagonal de 

ncol(A) #N�mero de columnas de la matriz
nrow(A) #N�mero de filas de la matriz
dim(A) #Dimensiones de la matrixz (fila, columna)

colMeans(A)#Medias de las columnas de la matriz
rowMeans(A)
rowSums(A) #Suma de las filas de la matriz
colSums(A)
