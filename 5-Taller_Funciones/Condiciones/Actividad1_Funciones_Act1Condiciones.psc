//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//Actividad 1- Realizar un programa en el cual se solicite la edad de una persona. Si la persona es mayor o igual a 18 años, 
//deberá mostrar en pantalla: Usted es mayor de edad.

SubProceso validarEdad()
	Escribir "Usted es mayor de edad.";
FinSubProceso

Proceso funcionMayorEdad
	Definir edadPersona Como Entero;
	Escribir "Escriba su edad:";
	Leer edadPersona;
	Si edadPersona >= 18	Entonces
		validarEdad();
	FinSi
FinProceso
