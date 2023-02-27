Proceso actividad6_AdminiTelefonos
//6- Se está creando una aplicación que va a estar conectada con un prototipo que permita almacenar contactos telefónicos en el dispositivo. 
//Para ello cada contacto debe contener nombre completo, teléfono y organización. Se requiere que la aplicación permita añadir 3 contactos 
//verificando que el número no esté almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere. Recuerde que el 
//sistema debe terminar cuando el usuario así lo indique.
	Definir nombreCompleto Como Caracter;
	Definir nombreCompleto1 Como Caracter;
	Definir nombreCompleto2 Como Caracter;
	Definir nombreCompleto3 Como Caracter;
	Definir telefonoNuevo Como Caracter;
	Definir telefono1 Como Caracter;
	Definir telefono2 Como Caracter;
	Definir telefono3 Como Caracter;
	Definir organizacion Como Caracter;
	Definir organizacion1 Como Caracter;
	Definir organizacion2 Como Caracter;
	Definir organizacion3 Como Caracter;
	Definir opcion Como Entero;
	Definir marcador Como Entero;
	Definir entrar Como Logico;
	
	marcador <- 0;
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	entrar <- Falso;
	
	Repetir
		Escribir "Bienvenidos a su sistema de administración de números telefónicos:";
		Escribir "1. Añadir contacto.";
		Escribir "2. Buscar contacto.";
		Escribir "3. Eliminar contacto.";
		Escribir "4. Salir del sistema.";
		
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Escriba su nombre completo.";
				Leer nombreCompleto;
				Escribir "Escriba su número telefónico.";
				Leer telefonoNuevo;
				Escribir "Escriba el nombre de su organización.";
				Leer organizacion;
				
				Si marcador < 3 Entonces
					Si telefono1 = "" Entonces
						telefono1 <- telefonoNuevo;
						nombreCompleto1 <- nombreCompleto;
						organizacion1 <- organizacion;
						Escribir "Su número de contacto ha sido agregado a nuestro sistema.";
						marcador <- 1;
					SiNo
						Si telefono2 = "" & telefonoNuevo <> telefono1 Entonces
							telefono2 <- telefonoNuevo;
							nombreCompleto2 <- nombreCompleto;
							organizacion2 <- organizacion;
							Escribir "Su número de contacto ha sido agregado a nuestro sistema.";
							marcador <- 2;
						SiNo
							Si telefono3 = "" & telefonoNuevo <> telefono1 & telefonoNuevo <> telefono2 Entonces
								telefono3 <- telefonoNuevo;
								nombreCompleto3 <- nombreCompleto;
								organizacion3 <- organizacion;
								Escribir "Su número de contacto ha sido agregado a nuestro sistema.";
								marcador <- 3;
							SiNo
								Escribir "El contacto que desea agregar ya existe.";
							FinSi
						FinSi
					FinSi
				SiNo
					Escribir "No se pueden adicionar mas números telefónicos al sistema.";
				FinSi
			2:
				Escribir "Escriba el número de telefóno que desea buscar.";
				Leer telefonoNuevo;
				
				Si telefonoNuevo = telefono1 Entonces
					Escribir "El número de contacto ", telefono1, " pertenece a ", nombreCompleto1, " y su organización es ", organizacion1;
				SiNo
					Si telefonoNuevo = telefono2 Entonces
						Escribir "El número de contacto ", telefono2, " pertenece a ", nombreCompleto2, " y su organización es ", organizacion2;
					SiNo
						Si telefonoNuevo = telefono3 Entonces
							Escribir "El número de contacto ", telefono3, " pertenece a ", nombreCompleto3, " y su organización es ", organizacion3;
						SiNo
							Escribir "El número buscado no se encuentra en nuestro sistema.";
						FinSi
					FinSi
				FinSi
			3:
				Escribir "Escriba el número de telefóno del contacto que desea eliminar.";
				Leer telefonoNuevo;
				
				Si telefonoNuevo = telefono1 Entonces
					Escribir "El número de contacto ", telefono1, " perteneciente a ", nombreCompleto1, " y la organización ", organizacion1, " será eliminado.";
					Escribir "Desea continuar?";
					Escribir "1. SI";
					Escribir "2. NO";
					Leer opcion;
					
					Segun opcion Hacer
						1:
							telefono1 <- "";
							nombreCompleto1 <- "";
							organizacion1 <- "";
							marcador <- marcador - 1;
							Escribir "El número de contacto ", telefonoNuevo, " fue eliminado.";
						2:	
							Escribir "Ha rechazado la opción de eliminar contacto.";
					FinSegun
				SiNo
					Si telefonoNuevo = telefono2 Entonces
						Escribir "El número de contacto ", telefono2, " perteneciente a ", nombreCompleto2, " y la organización ", organizacion2, " será eliminado.";
						Escribir "Desea continuar?";
						Escribir "1. SI";
						Escribir "2. NO";
						Leer opcion;
						
						Segun opcion Hacer
							1:
								telefono2 <- "";
								nombreCompleto2 <- "";
								organizacion2 <- "";
								marcador <- marcador - 1;
								Escribir "El número de contacto ", telefonoNuevo, " fue eliminado.";
							2:	
								Escribir "Ha rechazado la opción de eliminar contacto.";
						FinSegun
					SiNo
						Si telefonoNuevo = telefono3 Entonces
							Escribir "El número de contacto ", telefono3, " perteneciente a ", nombreCompleto3, " y la organización ", organizacion3, " será eliminado.";
							Escribir "Desea continuar?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer opcion;
							
							Segun opcion Hacer
								1:
									telefono3 <- "";
									nombreCompleto3 <- "";
									organizacion3 <- "";
									marcador <- marcador - 1;
									Escribir "El número de contacto ", telefonoNuevo, " fue eliminado.";
								2:	
									Escribir "Ha rechazado la opción de eliminar contacto.";
							FinSegun
						SiNo
							Escribir "El número buscado no se encuentra en nuestro sistema.";
						FinSi
					FinSi
				FinSi
			4:
				Escribir "Gracias por utilizar nuestro sistema de administración de números telefónicos.";
			De Otro Modo:
				Escribir "La opción elegida no existe.";
		FinSegun
	Hasta Que opcion = 4
FinProceso
