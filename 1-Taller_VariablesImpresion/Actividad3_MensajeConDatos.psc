Proceso Actividad3_MensajeConDatos
	//Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre y apellidos de su padre y madre. 
	//Al finalizar debe imprimir en pantalla el siguiente mensaje "Yo [Nombre Completo], soy hijo de [Nombre de la Madre] 
	//y [Nombre del Padre].
	Definir nombreHijo Como Caracter;
	Definir apellidoHijo Como Caracter;
	Definir nombreMadre Como Caracter;
	Definir apellidoMadre Como Caracter;
	Definir nombrePadre Como Caracter;
	Definir apellidoPadre Como Caracter;

	Escribir "Complete los datos solicitados a continuación:";
	Escribir "Escriba su Nombre:";
	Leer nombreHijo;
	Escribir "Escriba su Apellido:";
	Leer apellidoHijo;
	Escribir "Escriba el nombre de su madre:";
	Leer nombreMadre;
	Escribir "Escriba el apellido de su madre:";
	Leer apellidoMadre;
	Escribir "Escriba el nombre de su padre:";
	Leer nombrePadre;
	Escribir "Escriba el apellido de su padre:";
	Leer apellidoPadre;
	
	Escribir "Yo ", nombreHijo, " ", apellidoHijo, " soy hijo de ", nombreMadre, " ", apellidoMadre, " y ", nombrePadre, " ", apellidoPadre;
FinProceso
