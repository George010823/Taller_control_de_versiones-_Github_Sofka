//Funciones 3-Organizar todos los puntos del taller de arreglos en modo funciones.
//Arreglos Actividad 1- Crear un vector de tipo Entero con 5 posiciones, llenarlo con informaci�n solicitada al usuario. Despu�s de recoger 
//toda la informaci�n, se requiere imprimir el �ndice de cada posici�n en el arreglo con su valor de la siguiente manera:
//[0] = 55
//[1] = 99
//[2] = 11
//[3] = 56
//[4] = 69

SubProceso imprimirArreglo(numerosCeroAlCuatro)
	Definir indice Como Entero;
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",indice,"] = ", numerosCeroAlCuatro[indice];
	FinPara
FinSubProceso

Proceso Actividad1_Arreglos
	Definir numerosCeroAlCuatro, numeroUsuario, indice Como Entero;
	Dimension numerosCeroAlCuatro[5];
	
	Escribir "Ingrese el primer n�mero del vector.";
	Leer numeroUsuario;
	numerosCeroAlCuatro[0] <- numeroUsuario;
	Escribir "Ingrese el segundo n�mero del vector.";
	Leer numeroUsuario;
	numerosCeroAlCuatro[1] <- numeroUsuario;
	Escribir "Ingrese el tercer n�mero del vector.";
	Leer numeroUsuario;
	numerosCeroAlCuatro[2] <- numeroUsuario;
	Escribir "Ingrese el cuarto n�mero del vector.";
	Leer numeroUsuario;
	numerosCeroAlCuatro[3] <- numeroUsuario;
	Escribir "Ingrese el quinto n�mero del vector.";
	Leer numeroUsuario;
	numerosCeroAlCuatro[4] <- numeroUsuario;
	
	imprimirArreglo(numerosCeroAlCuatro);

FinProceso
