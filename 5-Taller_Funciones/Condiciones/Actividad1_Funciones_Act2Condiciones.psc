//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//2- Realizar un programa en el cual se solicite la edad de una persona. Si la persona es menor a 18 años, deberá mostrar en pantalla: 
//Usted aún es un niño(a).

SubProceso validarEdad()
	Escribir "Usted es mayor de edad.";
FinSubProceso

Proceso funcionMayorEdad
	Definir edadPersona Como Entero;
	Escribir "Escriba su edad:";
	Leer edadPersona;
	Si edadPersona < 18	Entonces
		Escribir "Usted aún es un niñ(a).";
	FinSi
FinProceso
