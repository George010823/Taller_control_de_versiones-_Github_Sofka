//Funciones 3-Organizar todos los puntos del taller de arreglos en modo funciones.
//3-Imprimir los números primos del 1 al 1000, el resultado debe ser buscado de forma matemática.
//Una lista parcial de los primeros números primos es la siguiente: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 
//67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167...

SubProceso numerosPrimos(numerosCeroAlVeinte, incremento, contador)
	Definir numeroVector, numeroPrimo, i Como Entero;
	
	Para contador <- 1 Hasta 1000 Con Paso 1 Hacer
		incremento <- 0;
		numeroVector <- numerosCeroAlVeinte[contador];
		
		Para i <- 1 Hasta numeroVector Hacer
			Si numeroVector % i = 0 Entonces
				incremento <- incremento + 1;
			FinSi
		FinPara
		
		Si incremento = 2 Entonces
			Escribir numeroVector, " es un número primo.";
			incremento <- 0;
		FinSi
	FinPara
FinSubProceso

Proceso Actividad3_Arreglos
	Definir numeroVector, numeroPrimo, numerosCeroAlVeinte, indice, contador, incremento, i Como Entero;
	Dimension numerosCeroAlVeinte[1001];
	
	contador <- 1;
	indice <- 1;
	incremento <- 0;
	
	Repetir
		numerosCeroAlVeinte[indice] <- (indice);
		indice <- indice + 1;
	Hasta Que indice = 1001
	
	numerosPrimos(numerosCeroAlVeinte, incremento, contador);
	
FinProceso
