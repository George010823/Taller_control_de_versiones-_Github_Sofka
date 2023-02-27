Proceso actividad5_MenuSaludo
	//5- Utilizando el ciclo que usted desee, crear un menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo.
	Definir opcion Como Entero;
	Definir nombre Como Caracter;
	Definir saludo Como Caracter;
	
	nombre <- "";
	
	Repetir
		Escribir "Menu de usuario:";
		Escribir "1. Captura de nombre.";
		Escribir "2. Saludar persona.";
		Escribir "3. Salir del sistema.";
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Escriba el nombre que desea capturar:";
				Escribir "Nombre.";
				Leer nombre;

				Escribir "El nombre es: ", nombre;
			2:				
				Si nombre = "" Entonces
					Escribir "No ha escrito un nombre para el saludo, por favor complete la opción 1";
				SiNo
					Escribir "Escriba el saludo que desea que la persona reciba:";
					Leer saludo;
					Escribir saludo, " ", nombre;
				FinSi
			3:
				Escribir "Gracias por utilizar nuestro sistema de saludos.";
			De Otro Modo:
				Escribir "La opción elegida no existe.";
		FinSegun
	Hasta Que opcion = 3
FinProceso
