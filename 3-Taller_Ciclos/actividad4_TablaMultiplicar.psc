Proceso actividad4_TablaMultiplicar
//4- Se requiere un programa que pueda crear la tabla de multiplicar del número que el usuario indique por medio del ciclo Para; 
//esta debe ser impresa del 1 al 10. Ejemplo, si el usuario indica que desea crear la tabla del 5, entonces el resultado debería ser el 
//siguiente:
	
	Definir multiplo, incremento, resultado Como Entero;
	
	Escribir "Escriba el número del cual desea obtener la tabla de multiplicación:";
	Leer multiplo;
	
	Para incremento <- 1 Hasta 10 Con Paso 1 Hacer
		resultado <- incremento * multiplo;
		Escribir incremento, " x ", multiplo, " = ", resultado;
	FinPara
FinProceso
