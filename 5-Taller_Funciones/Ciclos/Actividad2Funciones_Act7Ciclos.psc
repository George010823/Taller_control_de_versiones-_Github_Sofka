//Funciones 2 Organizar los puntos 6, 7 y 8 del taller de ciclos en modo funciones.
//7- El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que 
//permita registrar los vehículos que se cuidan en estas instalaciones. Se sugiere que el parqueadero tenga los atributos del vehículo como 
//son, placa y marca, y los datos del cliente como son nombre completo y número de teléfono. Para cada vehículo se debe permitir la opción 
//de ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero. Recuerde que el sistema debe 
//terminar cuando el usuario así lo indique. Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.

SubProceso marcador <- ingresarVehiculo(nombreCompleto1, nombreCompleto, telefono1, telefonoNuevo, marca1, marca)
	Definir marcador Como Entero;
	marcador <- 0;
	
	nombreCompleto1 <- nombreCompleto;
	telefono1 <- telefonoNuevo;
	marca1 <- marca;
	Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
	marcador <- 1;
FinSubProceso

SubProceso marcador <- ingresarVehiculo2(nombreCompleto2, nombreCompleto, telefono2, telefonoNuevo, marca2, marca)
	Definir marcador Como Entero;
	marcador <- 0;
		
	nombreCompleto2 <- nombreCompleto;
	telefono2 <- telefonoNuevo;
	marca2 <- marca;
	Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
	marcador <- 2;
FinSubProceso

SubProceso marcador <- ingresarVehiculo3(nombreCompleto3, nombreCompleto, telefono3, telefonoNuevo, marca3, marca)
	Definir marcador Como Entero;
	marcador <- 0;
	
	nombreCompleto3 <- nombreCompleto;
	telefono3 <- telefonoNuevo;
	marca3 <- marca;
	Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
	marcador <- 3;
FinSubProceso

SubProceso marcador <- ingresarVehiculo4(nombreCompleto4, nombreCompleto, telefono4, telefonoNuevo, marca4, marca)
	Definir marcador Como Entero;
	marcador <- 0;
	
	nombreCompleto4 <- nombreCompleto;
	telefono4 <- telefonoNuevo;
	marca4 <- marca;
	Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
	marcador <- 4;
FinSubProceso

SubProceso marcador <- ingresarVehiculo5(nombreCompleto5, nombreCompleto, telefono5, telefonoNuevo, marca5, marca)
	Definir marcador Como Entero;
	marcador <- 0;
	
	nombreCompleto5 <- nombreCompleto;
	telefono3 <- telefonoNuevo;
	marca3 <- marca;
	Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
	marcador <- 5;
FinSubProceso

SubProceso marcador <- retirarVehiculo1(telefono1, placa1, marca1, marcador)
	Escribir "El vehiculo de placa ", placa1, " será retirado del parqueadero.";			
	telefono1 <- "";
	placa1 <- "";
	marca1 <- "";
	marcador <- marcador - 1;
FinSubProceso

SubProceso marcador <- retirarVehiculo2(telefono2, placa2, marca2, marcador)
	Escribir "El vehiculo de placa ", placa2, " será retirado del parqueadero.";			
	telefono2 <- "";
	placa2 <- "";
	marca2 <- "";
	marcador <- marcador - 1;
FinSubProceso

SubProceso marcador <- retirarVehiculo3(telefono3, placa3, marca3, marcador)
	Escribir "El vehiculo de placa ", placa3, " será retirado del parqueadero.";			
	telefono3 <- "";
	placa3 <- "";
	marca3 <- "";
	marcador <- marcador - 1;
FinSubProceso

SubProceso marcador <- retirarVehiculo4(telefono4, placa4, marca4, marcador)
	Escribir "El vehiculo de placa ", placa4, " será retirado del parqueadero.";			
	telefono4 <- "";
	placa4 <- "";
	marca4 <- "";
	marcador <- marcador - 1;
FinSubProceso

SubProceso marcador <- retirarVehiculo5(telefono5, placa5, marca5, marcador)
	Escribir "El vehiculo de placa ", placa5, " será retirado del parqueadero.";			
	telefono5 <- "";
	placa5 <- "";
	marca5 <- "";
	marcador <- marcador - 1;
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

SubProceso salirSistema()
	Escribir "Gracias por utilizar nuestro sistema de administración de parqueo de vehiculos.";
FinSubProceso

Proceso actividad7_ParqueaderoElGuardian
	Definir nombreCompleto Como Caracter;
	Definir nombreCompleto1 Como Caracter;
	Definir nombreCompleto2 Como Caracter;
	Definir nombreCompleto3 Como Caracter;
	Definir nombreCompleto4 Como Caracter;
	Definir nombreCompleto5 Como Caracter;
	Definir telefonoNuevo Como Caracter;
	Definir telefono1 Como Caracter;
	Definir telefono2 Como Caracter;
	Definir telefono3 Como Caracter;
	Definir telefono4 Como Caracter;
	Definir telefono5 Como Caracter;
	Definir placa Como Caracter;
	Definir placa1 Como Caracter;
	Definir placa2 Como Caracter;
	Definir placa3 Como Caracter;
	Definir placa4 Como Caracter;
	Definir placa5 Como Caracter;
	Definir marca Como Caracter;
	Definir marca1 Como Caracter;
	Definir marca2 Como Caracter;
	Definir marca3 Como Caracter;
	Definir marca4 Como Caracter;
	Definir marca5 Como Caracter;
	Definir opcion Como Entero;
	Definir marcador Como Entero;
	Definir entrar Como Logico;
	
	marcador <- 0;
	placa1 <- "";
	placa2 <- "";
	placa3 <- "";
	placa4 <- "";
	placa5 <- "";
	nombreCompleto1 <- "";
	nombreCompleto2 <- "";
	nombreCompleto3 <- "";
	nombreCompleto4 <- "";
	nombreCompleto5 <- "";
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	telefono4 <- "";
	telefono5 <- "";
	marca1 <- "";
	marca2 <- "";
	marca3 <- "";
	marca4 <- "";
	marca5 <- "";
	
	Repetir
		Escribir "Bienvenidos a su sistema parqueadero El Guardian:";
		Escribir "1. Ingresar vehiculo.";
		Escribir "2. Buscar vehiculo.";
		Escribir "3. Retirar vehiculo.";
		Escribir "4. Salir del sistema.";
		
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Escriba su nombre completo.";
				Leer nombreCompleto;
				Escribir "Escriba su número telefónico.";
				Leer telefonoNuevo;
				Escribir "Escriba el nombre de la placa de su vehiculo.";
				Leer placa;
				Escribir "Escriba el nombre de la marca de su vehiculo.";
				Leer marca;
				
				Si marcador < 5 Entonces
					Si placa1 = "" Entonces
						marcador <- ingresarVehiculo(nombreCompleto1, nombreCompleto, telefono1, telefonoNuevo, marca1, marca);
						placa1 <- placa;
					SiNo
						Si placa2 = "" & placa <> placa1 Entonces
							marcador <- ingresarVehiculo2(nombreCompleto2, nombreCompleto, telefono2, telefonoNuevo, marca2, marca);
							placa2 <- placa;
						SiNo
							Si placa3 = "" & placa <> placa1 & placa <> placa2 Entonces
								marcador <- ingresarVehiculo3(nombreCompleto3, nombreCompleto, telefono3, telefonoNuevo, marca3, marca);
								placa3 <- placa;
							SiNo
								Si placa4 = "" & placa <> placa1 & placa <> placa2 & placa <> placa3 Entonces
									marcador <- ingresarVehiculo4(nombreCompleto4, nombreCompleto, telefono4, telefonoNuevo, marca4, marca);
									placa4 <- placa;
								SiNo
									Si placa5 = "" & placa <> placa1 & placa <> placa2 & placa <> placa3 & placa <> placa4 Entonces
										marcador <- ingresarVehiculo5(nombreCompleto5, nombreCompleto, telefono5, telefonoNuevo, marca5, marca);
										placa5 <- placa;
									SiNo
										Escribir "El vehiculo que desea agregar ya se encuentra en el parqueadero.";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				SiNo
					Escribir "No se pueden ingresar mas vehiculos, el parqueadero tiene el cupo completo.";
				FinSi
			2:
				Escribir "Escriba la placa del vehiculo que desea buscar.";
				Leer placa;
				
				Si placa = placa1 Entonces
					Escribir "El vehiculo con placas ", placa1, " se encuentra en la zona azul Z3.";
				SiNo
					Si placa = placa2 Entonces
						Escribir "El vehiculo con placas ", placa2, " se encuentra en la zona azul Z3.";
					SiNo
						Si placa = placa3 Entonces
							Escribir "El vehiculo con placas ", placa3, " se encuentra en la zona azul Z3.";
						SiNo
							Si placa = placa4 Entonces
								Escribir "El vehiculo con placas ", placa4, " se encuentra en la zona azul Z3.";
							SiNo
								Si placa = placa5 Entonces
									Escribir "El vehiculo con placas ", placa5, " se encuentra en la zona azul Z3.";
								SiNo
									Escribir "El número de placa buscado no se encuentra en el parqueadero.";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			3:
				Escribir "Escriba el número de la placa del vehiculo que desea retirar.";
				Leer placa;
				
				Si placa = placa1 Entonces
					marcador <- retirarVehiculo1(telefono1, placa1, marca1, marcador);
					placa1 <- "";
				SiNo
					Si placa = placa2 Entonces
						marcador <- retirarVehiculo2(telefono1, placa2, marca2, marcador);
						placa2 <- "";
					SiNo
						Si placa = placa3 Entonces
							marcador <- retirarVehiculo3(telefono3, placa3, marca3, marcador);
							placa3 <- "";
						SiNo
							Si placa = placa4 Entonces
								marcador <- retirarVehiculo4(telefono4, placa4, marca4, marcador);
								placa4 <- "";
							SiNo
								Si placa = placa5 Entonces
									marcador <- retirarVehiculo5(telefono5, placa5, marca5, marcador);
									placa5 <- "";
								SiNo
									Escribir "El vehiculo con placas ", placa, " no se encuentra en el parqueadero.";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			4:
				salirSistema();
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que opcion = 4
FinProceso
