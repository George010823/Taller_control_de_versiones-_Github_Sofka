//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//6- El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas revisiones y requiere 
//una aplicaci�n que le permita registrar los servicios generados a sus clientes. Para cada motocicleta se debe tener registro del 
//ingreso al taller y las observaciones por parte del cliente. Tambi�n debe existir registro de salida del taller con las novedades y 
//otra de arreglos hechos por el mec�nico en caso de que se requiera inventariar cambios repuestos en la motocicleta al entregarla

SubProceso registrarServicio(opcion,placaMoto, nombreCliente, fechaRevision, nombreMecanico, cilindrajeMoto, modeloMoto, marcaMoto)
	Repetir
		Escribir "Desea que se imprima el informe del registro de la motocicleta?";
		Escribir "1. Si";
		Escribir "2. No";
		
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "La motocicleta de placas ", placaMoto, " perteneciente al cliente ", nombreCliente, ".";
				Escribir "Fue ingresada al taller el dia ", fechaRevision, " para su respectiva revisi�n. Fue recibida por el mecanico ";
				Escribir nombreMecanico, ".";
				Escribir "Se anexan detalles de la motocicleta: ";
				Escribir "Cilindraje de la motocicleta: ", cilindrajeMoto;
				Escribir "Modelo-/A�o de la motocicleta: ", modeloMoto;
				Escribir "Marca de la motocicleta: ", marcaMoto;
			2:
				Escribir "Ingresar a inspecci�n directamente.";
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que opcion = 1 o opcion = 2
FinSubProceso

SubProceso revisarObservaciones(verObservacionesMoto, placaMotoObservaciones, placaMoto, observacionesMoto)
	Si verObservacionesMoto = Verdadero & placaMotoObservaciones =  placaMoto Entonces
		Escribir "Las observaciones realizadas por el cliente para la inspecci�n de la moto son las siguientes:";
		Escribir observacionesMoto;
		Escribir "";
	SiNo
		Escribir "Las placas de la moto no coinciden o no se ha hecho ninguna observaci�n sobre la inspecci�n de la motocicleta.";
		Escribir "";
	FinSi
FinSubProceso

SubProceso registrarEntrega(verObservacionesMoto, placaMotoObservaciones, placaMoto, nombreCliente, fechaRevision, nombreMecanico)
	Definir fechaEntrega Como Caracter;
	Definir observacionesMotoEntrega Como Caracter;
	Si verObservacionesMoto = Verdadero & placaMotoObservaciones =  placaMoto Entonces
		Escribir "Escriba la fecha de entrega de la moto:";
		Leer fechaEntrega;
		Escribir "Escriba los cambios realizados a la motocicleta durante la inspecci�n:";
		Leer observacionesMotoEntrega;
		
		Escribir "A continuaci�n se detalla y entrega el registro de la inspecci�n de la motocicleta:";
		Escribir "";
		Escribir "Se hace entrega de la motocicleta de placas ", placaMoto, " perteneciente al cliente ", nombreCliente, ".";
		Escribir "Fue ingresada al taller el dia ", fechaRevision, " para su respectiva revisi�n. y recibida por el mecanico ";
		Escribir nombreMecanico, ". La motocicleta se entrega el dia de hoy ", fechaEntrega, " y se relacionan los cambios ";
		Escribir "realizados, ", observacionesMotoEntrega;
		Escribir "";
	SiNo
		Escribir "Las placas de la moto no coinciden o no se encuentra lista para la entrega. Por favor pregunte al administrador";
		Escribir "";
	FinSi
FinSubProceso

SubProceso cambioRepuestos(repuestos, valorRepuestos)
	Escribir "Los repuestos utilizados en la motocicleta son ", repuestos, ". el costo del repuesto es de ", valorRepuestos;
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

SubProceso salirSistema()
	Escribir "Gracias por utilizar nuestro sistema El Maquinista.";
FinSubProceso

Proceso el_Maquinista
	Definir fechaRevision Como Caracter;
	Definir fechaEntrega Como Caracter;
	Definir nombreCliente Como Caracter;
	Definir cilindrajeMoto Como Entero;
	Definir modeloMoto Como Caracter;
	Definir marcaMoto Como Caracter;
	Definir placaMoto Como Caracter;
	Definir placaMotoObservaciones Como Caracter;
	Definir observacionesMoto Como Caracter;
	Definir observacionesMotoEntrega Como Caracter;
	Definir verObservacionesMoto Como Logico;
	Definir salir Como Logico;
	
	Definir nombreMecanico Como Caracter;
	Definir observacionesArreglos Como Caracter;
	Definir repuestos Como Caracter;
	Definir valorRepuestos Como Entero;
	Definir opcion Como Entero;
	
	verObservacionesMoto <- Falso;
	salir <- Falso;
	
	Repetir
		Escribir "Bienvenidos a su taller EL Maquinista, por favor seleccione una de las opciones presentadas a continuaci�n:";
		Escribir "1. Registrar servicio nuevo.";
		Escribir "2. Revisar observaciones del cliente.";
		Escribir "3. Registrar entrega de motocicleta.";
		Escribir "4. Detalle de repuestos cambiados de la motocicleta.";
		Escribir "5. Salir del sistema.";
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Documente los campos presentados a continuaci�n:";
				Escribir "Fecha de revision de la motocicleta.";
				Leer fechaRevision;
				Escribir "Nombre del due�o o cliente.";
				Leer nombreCliente;
				Escribir "Cilindraje de la motocicleta.";
				Leer cilindrajeMoto;
				Escribir "Modelo-/A�o de la motocicleta.";
				Leer modeloMoto;
				Escribir "Marca de la motocicleta.";
				Leer marcaMoto;
				Escribir "Placa de la motocicleta.";
				Leer placaMoto;
				Escribir "Nombre del mecanico que recibe la motocicleta.";
				Leer nombreMecanico;
				Escribir "Describa la solicitud del cliente en cuanto a los problemas presentados en la motocicleta.";
				Leer observacionesMoto;
				
				verObservacionesMoto <- Verdadero;
				
				registrarServicio(opcion,placaMoto, nombreCliente, fechaRevision, nombreMecanico, cilindrajeMoto, modeloMoto, marcaMoto);
				
				Escribir "";
				Escribir "A continuaci�n se mostrar� de nuevo el men� por si desea seleccionar una nueva opci�n.";
				Escribir "";
			2:
				Escribir "";
				Escribir "Escriba las placas de la moto a revisar:";
				Leer placaMotoObservaciones;
				revisarObservaciones(verObservacionesMoto, placaMotoObservaciones, placaMoto, observacionesMoto);
				Escribir "";
				Escribir "A continuaci�n se mostrar� de nuevo el men� por si desea seleccionar una nueva opci�n.";
				Escribir "";
			3:
				Escribir "";
				Escribir "Escriba las placas de la moto a entregar:";
				Leer placaMotoObservaciones;
				registrarEntrega(verObservacionesMoto,placaMotoObservaciones, placaMoto, nombreCliente, fechaRevision, nombreMecanico);
				Escribir "";
				Escribir "A continuaci�n se mostrar� de nuevo el men� por si desea seleccionar una nueva opci�n.";
				Escribir "";
			4:
				Escribir "A continuaci�n detalle el nombre y precio de los respuestos utilizados en el arreglo de la motocicleta:";
				Escribir "Escriba el nombre del repuesto:";
				Leer repuestos;
				Escribir "Digite el valor del repuesto:";
				Leer valorRepuestos;
				Escribir "";
				cambioRepuestos(repuestos, valorRepuestos);
				Escribir "";
				Escribir "";
				Escribir "A continuaci�n se mostrar� de nuevo el men� por si desea seleccionar una nueva opci�n.";
				Escribir "";
			5:
				salir <- Verdadero;
				salirSistema();
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que salir = Verdadero
FinProceso
