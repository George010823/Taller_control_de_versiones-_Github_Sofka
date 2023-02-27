Proceso actividad2_MientrasHacer
	Definir columna, fila, simbolo Como Entero;
	
	columna <- 10;
	Mientras (columna >= 1) Hacer
		fila <- 1;
		Mientras (fila <= columna) Hacer
			Escribir " " Sin Saltar;
			fila <- fila + 1;
		FinMientras
		Para simbolo <- 10 Hasta columna Con Paso -1 Hacer
			Escribir "*" Sin Saltar;
		FinPara
		columna <- columna - 1 ;
		Escribir "";
	FinMientras
FinProceso
