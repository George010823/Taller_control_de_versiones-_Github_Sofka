Proceso videoTienda
	//4- La video tienda que presta sus servicios de alquiler de pel�culas a los usuarios del barrio el Porvenir, requiere de una aplicaci�n 
	//que permita registrar el alquiler de las pel�culas que adquieren sus usuarios. Para cada usuario se debe permitir la opci�n de alquilar 
	//pel�cula, consultar pel�culas disponibles y recibir pel�cula en la video tienda con la opci�n de realizar anotaciones sobre estas 
	//si se llegan a presentar da�os u otra novedad sobre la pel�cula.
	
	Definir opcion Como Entero;
	Definir pelicula Como Caracter;
	Definir comentario Como Caracter;
	
	Escribir "Seleccione una opci�n a continuaci�n para la gesti�n de alquiler de pel�culas:";
	Escribir "1. Consultar Pel�culas Disponibles.";
	Escribir "2. Alquilar Pel�cula.";
	Escribir "3. Recibir Pel�culas.";
	
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "A continuaci�n se muestra el listado de pel�culas disponibles:";
			Escribir "1. Armagedon.";
			Escribir "2. 2012";
			Escribir "3. Contra Cara";
			Escribir "4. Interstellar";
		2:
			Escribir "Seleccione la pel�cula deseada dentro de la lista de pel�culas disponibles:";
			Escribir "1. Armagedon.";
			Escribir "2. 2012";
			Escribir "3. Contra Cara";
			Escribir "4. Interstellar";
			Escribir "5. Una pel�cula diferente de la lista:";
			
			Leer opcion;
			
			Si opcion = 1 | opcion = 2 | opcion = 3 | opcion = 4 Entonces
				Escribir "Muchas gracias por su compra, el alquiler es por 7 dias a partir de la fecha.";
			SiNo
				Si opcion = 5 Entonces
					Escribir "Escriba el nombre de la pel�cula que desea alquilar";
					Leer pelicula;
					Escribir "Lo sentimos!!! la pel�cula ", pelicula, " no se encuentra disponible hasta el momento.";
				SiNo
					Escribir "La opcion elegida no existe.";
				FinSi
			FinSi
		3:
			Escribir "Cual es el nombre de la pelicula que desea entregar:";
			Leer pelicula;
			
			Escribir "Desea realizar anotaciones del estado de entrega de la pelicula?";
			Escribir "1. Si";
			Escribir "2. No";
			
			Leer opcion;
			
			Segun opcion Hacer
				1:
					Escribir "Describa las novedades del estado de la pelicula y la fecha de entrega.";
					Leer comentario;
					Escribir "La pelicula ", pelicula, " se encuentra en el siguiente estado: ", comentario; 
				2:
					Escribir "Comentario automatico: La pelicula ", pelicula, " se encuentra en buen estado y sin comentarios";
				De Otro Modo:
					Escribir "La opcion elegida no existe.";
			FinSegun	
		De Otro Modo:
			Escribir "La opcion elegida no existe.";
	FinSegun
	
FinProceso
