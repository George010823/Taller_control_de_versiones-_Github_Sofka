//Funciones 3-Organizar todos los puntos del taller de arreglos en modo funciones.
//2-Crear un arreglo de números enteros de 20 posiciones, el cual, debe ser llenado con números aleatorios entre 1 y 100; 
//después de haber llenado dicho arreglo, se debe volver a recorrer utilizando un ciclo diferente al que se usó para llenarse e imprimir 
//los números pares e impares. Ejemplo
//Números pares: 2, 4, 6, 8, 10
//Números impares: 1, 3, 5, 7, 9

SubProceso numeroAleatorio(numerosCeroAlVeinte, incrementoPar, incrementoImpar)
	Definir indice Como Entero;
	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		Si numerosCeroAlVeinte[indice] % 2 = 0 Entonces
			Si incrementoPar = 0 Entonces
				Escribir "";
				incrementoPar <- 1;
				Escribir "Números pares: " Sin Saltar;
			FinSi
			Si indice = 19 Entonces
				Escribir Sin Saltar numerosCeroAlVeinte[indice];	
			SiNo
				Escribir Sin Saltar numerosCeroAlVeinte[indice], ", ";	
			FinSi
		FinSi
	FinPara
	Escribir "";	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		Si numerosCeroAlVeinte[indice] % 2 <> 0 Entonces
			Si incrementoImpar = 0 Entonces
				Escribir "";
				incrementoImpar <- 1;
				Escribir "Números impares: " Sin Saltar;
			FinSi
			Si indice = 19 Entonces
				Escribir Sin Saltar numerosCeroAlVeinte[indice];	
			SiNo
				Escribir Sin Saltar numerosCeroAlVeinte[indice], ", ";	
			FinSi
		FinSi
	FinPara
FinSubProceso

Proceso Actividad2_Arreglos
	Definir numerosCeroAlVeinte, indice, incrementoPar, incrementoImpar Como Entero;
	Dimension numerosCeroAlVeinte[20];
	
	indice <- 0;
	incrementoPar <- 0;
	incrementoImpar <- 0;
	
	Repetir
		numerosCeroAlVeinte[indice] <- azar(100);
		indice <- indice + 1;
	Hasta Que indice = 20
	
	numeroAleatorio(numerosCeroAlVeinte, incrementoPar, incrementoImpar);
	Escribir "";
FinProceso
