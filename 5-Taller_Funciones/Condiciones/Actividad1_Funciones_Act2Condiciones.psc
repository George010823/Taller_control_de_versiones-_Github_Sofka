//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//2- Realizar un programa en el cual se solicite la edad de una persona. Si la persona es menor a 18 a�os, deber� mostrar en pantalla: 
//Usted a�n es un ni�o(a).

SubProceso validarEdad()
	Escribir "Usted es mayor de edad.";
FinSubProceso

Proceso funcionMayorEdad
	Definir edadPersona Como Entero;
	Escribir "Escriba su edad:";
	Leer edadPersona;
	Si edadPersona < 18	Entonces
		Escribir "Usted a�n es un ni�(a).";
	FinSi
FinProceso
