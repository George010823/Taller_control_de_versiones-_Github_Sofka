Proceso videoTienda
	//4- La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir, requiere de una aplicación 
	//que permita registrar el alquiler de las películas que adquieren sus usuarios. Para cada usuario se debe permitir la opción de alquilar 
	//película, consultar películas disponibles y recibir película en la video tienda con la opción de realizar anotaciones sobre estas 
	//si se llegan a presentar daños u otra novedad sobre la película.
	
	Definir opcion Como Entero;
	Definir pelicula Como Caracter;
	Definir comentario Como Caracter;
	
	Escribir "Seleccione una opción a continuación para la gestión de alquiler de películas:";
	Escribir "1. Consultar Películas Disponibles.";
	Escribir "2. Alquilar Película.";
	Escribir "3. Recibir Películas.";
	
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "A continuación se muestra el listado de películas disponibles:";
			Escribir "1. Armagedon.";
			Escribir "2. 2012";
			Escribir "3. Contra Cara";
			Escribir "4. Interstellar";
		2:
			Escribir "Seleccione la película deseada dentro de la lista de películas disponibles:";
			Escribir "1. Armagedon.";
			Escribir "2. 2012";
			Escribir "3. Contra Cara";
			Escribir "4. Interstellar";
			Escribir "5. Una película diferente de la lista:";
			
			Leer opcion;
			
			Si opcion = 1 | opcion = 2 | opcion = 3 | opcion = 4 Entonces
				Escribir "Muchas gracias por su compra, el alquiler es por 7 dias a partir de la fecha.";
			SiNo
				Si opcion = 5 Entonces
					Escribir "Escriba el nombre de la película que desea alquilar";
					Leer pelicula;
					Escribir "Lo sentimos!!! la película ", pelicula, " no se encuentra disponible hasta el momento.";
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
