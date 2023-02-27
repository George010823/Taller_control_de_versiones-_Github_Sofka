Proceso imc
	//7-La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular el IMC (Índice de masa corporal) y requiere 
	//los datos peso en kilogramos y estatura en metros Para cada persona encuestada adicional a los datos suministrados, debe mostrar 
	//el resultado para cada uno y establecer en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).
	//FORMULA IMC: Peso(kg)/(Altura(m) * Altura(m))
	
	Definir nombreEncuestado Como Caracter;
	Definir pesoKilogramos Como Real;
	Definir alturaMetros Como Real;
	Definir valorIMC Como Real;
	Definir rangoIMC Como Caracter;
	Definir terminarEncuesta Como Caracter;
	Definir rangoPeso Como Caracter;
	
	Repetir
		Escribir "Documente los campos presentados a continuación:";
		Escribir "Nombre Completo.";
		Leer nombreEncuestado;
		Escribir "Peso en Kilogramos.";
		Leer pesoKilogramos;
		Escribir "Altura en Metros.";
		Leer alturaMetros;
	
		valorIMC <- (pesoKilogramos/(alturaMetros * alturaMetros));
		
		SI valorIMC < 18.5 Entonces
			rangoPeso <- "Bajo peso";
			Escribir "El encuestado ", nombreEncuestado, " tiene un IMC de ", valorIMC, " y el rango en que se encuentra es ", rangoPeso;
		FinSi
		
		Si valorIMC >= 18.5 & valorIMC <= 24.9 Entonces
			rangoPeso <- "Normal";
			Escribir "El encuestado ", nombreEncuestado, " tiene un IMC de ", valorIMC, " y el rango en que se encuentra es ", rangoPeso;
		FinSi
		
		Si valorIMC >= 25.0 & valorIMC <= 29.9 Entonces
			rangoPeso <- "Sobrepeso";
			Escribir "El encuestado ", nombreEncuestado, " tiene un IMC de ", valorIMC, " y el rango en que se encuentra es ", rangoPeso;
		FinSi
		
		Si valorIMC >= 30 Entonces
			rangoPeso <- "Obeso";
			Escribir "El encuestado ", nombreEncuestado, " tiene un IMC de ", valorIMC, " y el rango en que se encuentra es ", rangoPeso;
		FinSi
		Escribir "";
		
		Escribir "Desea terminar el tiempo de encuestas, SI/NO.";
		Leer terminarEncuesta;
		Escribir "";
	Hasta Que terminarEncuesta = "SI";
FinProceso
