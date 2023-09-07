Algoritmo ProyectoFinal_Calculadora
	Definir num1,num2,res Como Real
	Definir op Como Entero
	Escribir '    Bienvenido a la calculadora'
	Escribir ' Cargue el numero segun corresponda'
	Escribir '------------------------------------'
	Escribir '       |     1 - Suma           |'
	Escribir '          --------------------'
	Escribir '       |     2 - Resta          |'
	Escribir '          --------------------'
	Escribir '       | 3 - Multiplicacion     |'
	Escribir '          --------------------'
	Escribir '       |   4 - Divicion         |'
	Escribir '          --------------------'
	Escribir '       |   5 - Potencia         |'
	Escribir '         --------------------'
	Escribir '       |     6 - Raiz           |'
	Escribir '         --------------------'
	Escribir '       |    7 - Factorial       |'
	Escribir '         --------------------'
	Escribir '------------------------------------'
	Escribir 'Opcion elegida:'
	Leer op
	
	Escribir 'Ingrese el primer numero a operar: '
	Leer num1
	
	Segun op  Hacer
		1:
			Escribir 'Ingrese el numero a sumar: '
			Leer num2
			res <- Suma(num1,num2)
		2:
			Escribir 'Ingrese el sustraendo: '
			Leer num2
			res <- Resta(num1,num2)
		3:
			Escribir 'Ingrese el multiplicador: '
			Leer num2
			res <- Multiplicacion(num1,num2)
		4:
			Escribir 'Ingrese el divisor: '
			Leer num2
			res <- Divicion(num1,num2)
		5:
			Escribir 'ingrese el exponente: '
			Leer num2
			Si (num2=0) Entonces
				res <- 1
			SiNo
				Si (num2>0) Entonces
					res <- Potencia(num1,num2)
				SiNo
					num2 <- abs(num2)
					res <- 1/Potencia(num1,num2)
				FinSi
			FinSi
		6:
			Escribir 'Ingrese el indice: '
			Leer num2
			Si (num2>0) Entonces
				res <- Rai(num1,num2)
			SiNo
				Escribir 'No se puede calcular la Raiz de un nuemero negativo'
			FinSi
		7:
			Si ((num1>=0) Y (EsEntero(num1))) Entonces
				res <- Factorial(num1)
			SiNo
				Escribir '     '
				Escribir 'El numero ingresado es negativo o con coma.'
				res <- 0
			FinSi
	FinSegun
	Escribir ''
	Escribir 'La respuesta es: ',res
FinAlgoritmo

///--------------------------------------------------------------------------///
///-----------------------------------///
Funcion s <- Suma (n1,n2)
	Definir s Como Real
	s <- n1+n2
FinFuncion

///-----------------------------------///
Funcion r <- Resta (n1,n2)
	Definir r Como Real
	r <- n1-n2
FinFuncion

///-----------------------------------///
Funcion m <- Multiplicacion (n1,n2)
	Definir m Como Real
	m <- n1*n2
FinFuncion

///-----------------------------------///
Funcion d <- Divicion (n1,n2)
	Definir d Como Real
	d <- n1/n2
FinFuncion

///-----------------------------------/// 
Funcion ra <- Rai (n1,n2)
	Definir ra,aprox Como Real
	Definir i Como Entero
	Si (n2=2) Entonces
		ra <- raiz(n1)
	SiNo
		aprox <- 1
		ra <- 1
		Para i<-1 Hasta 20 Hacer
			ra <- ((n2-1)*aprox+n1/(aprox^(n2-1)))/n2
			aprox <- ra
		FinPara
	FinSi
FinFuncion

///-----------------------------------/// 
Funcion p <- Potencia (n1,n2)
	Definir p Como Real
	p <- n1
	Mientras (n2<>1) Hacer
		p <- p*n1
		n2 <- n2-1
	FinMientras
FinFuncion

///-----------------------------------///
Funcion f <- Factorial (n)
	Definir f,ant Como Real
	Si n=0 O n=1 Entonces
		f <- 1
	SiNo
		ant <- Factorial(n-1)
		f <- n*ant
	FinSi
FinFuncion

///-----------------------------------///
Funcion cum <- EsEntero (n)
	Definir cum Como Logico
	Definir Pe Como Real
	n <- n-0.5
	Pe <- redon(n)
	n <- n+0.5
	Si (n=Pe) Entonces
		cum <- Verdadero
	SiNo
		cum <- Falso
	FinSi
FinFuncion
