Proceso actividad3_RepetirHastaQue
	Definir alturaArbol, baseArbol, k, i, l, na, ne Como Entero;
	Definir asterisco Como Texto;
	Definir terminado Como Logico;
	
	alturaArbol <- 12;
	na <- 1;
	ne <- 15;
	k <- 1;
	i <- 1;
	terminado <- Falso;
	
	Repetir
		//para i = 1 hasta nfilas con paso 1 hacer
		Repetir	
			k <- 0;
			//para k = 1 hasta ne con paso 1 hacer
			Repetir
				Escribir Sin Saltar " ";
				k <- k + 1;		
			Hasta Que k = ne;
			asterisco <- "";
			
			k <- 0;
			//para k = 1 hasta na con paso 1 hacer
			Repetir
				asterisco <- Concatenar(asterisco, "*");
				k <- k + 1;		
			Hasta Que k = na;
			Escribir asterisco;
			
			na <- na + 2;
			ne <- ne - 1;
			i <- i + 1;
		Hasta Que i = alturaArbol;	
		
		
		baseArbol <- 5;
		na <- 1;
		ne <- 14;
		k <- 1;
		i <- 1;
		Repetir	
			k <- 0;
			//para k = 1 hasta ne con paso 1 hacer
			Repetir
				Si i > 2 Entonces
					ne <- 13;
					Escribir Sin Saltar " ";
					k <- k + 1;
				SiNo
					Escribir Sin Saltar " ";
					k <- k + 1;
				FinSi
			Hasta Que k = ne;
			asterisco <- "";
			
			k <- 0;
			//para k = 1 hasta na con paso 1 hacer
			Repetir
				Si i > 2 Entonces
					asterisco <- Concatenar(asterisco, "*****");
					k <- k + 1;
				SiNo
					asterisco <- Concatenar(asterisco, "***");
					k <- k + 1;
				FinSi
			Hasta Que k = na;
			Escribir asterisco;
			
			na <- na;
			ne <- 14;
			i <- i + 1;
		Hasta Que i = baseArbol;
		terminado <- Verdadero;
	Hasta Que terminado = Verdadero
FinProceso
