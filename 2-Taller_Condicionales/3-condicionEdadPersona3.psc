Proceso condicionEdadPersona3
//3- Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona. Si la persona es mayor o igual a 18 a�os, 
//entonce se deber� imprimir en pantalla [Nombre completo] usted es mayor de edad, por lo tanto puede entrar a la fiesta. 
//Si la edad de la persona es menor que 18 a�os, entonces, deber� imprimirse el siguiente mensaje: [Nombre completo] usted es menor de edad, 
//por lo tanto, no puede entrar a la fiesta, por favor devu�lvase a su casa.
	
	Definir nombrePersona Como Caracter;
	Definir apellidoPersona Como Caracter;
	Definir edadPersona Como Entero;
	
	Escribir "Ingrese los datos solicitados a continuaci�n.";
	Escribir "Escriba su Nombre:";
	Leer nombrePersona;
	Escribir "Escriba su Apellido:";
	Leer apellidoPersona;
	Escribir "Escriba su edad:";
	Leer edadPersona;
		
	Si edadPersona >= 18	Entonces
		Escribir nombrePersona, " ", apellidoPersona, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir nombrePersona, " ", apellidoPersona, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devu�lvase a su casa.";
	FinSi
	
FinProceso
