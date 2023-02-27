Proceso actividad7_ParqueaderoElGuardian
//7- El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que 
//permita registrar los vehículos que se cuidan en estas instalaciones. Se sugiere que el parqueadero tenga los atributos del vehículo como 
//son, placa y marca, y los datos del cliente como son nombre completo y número de teléfono. Para cada vehículo se debe permitir la opción 
//de ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero. Recuerde que el sistema debe 
//terminar cuando el usuario así lo indique. Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.
	
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
						nombreCompleto1 <- nombreCompleto;
						telefono1 <- telefonoNuevo;
						placa1 <- placa;
						marca1 <- marca;
						Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
						marcador <- 1;
					SiNo
						Si placa2 = "" & placa <> placa1 Entonces
							nombreCompleto2 <- nombreCompleto;
							telefono2 <- telefonoNuevo;
							placa2 <- placa;
							marca2 <- marca;
							Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
							marcador <- 2;
						SiNo
							Si placa3 = "" & placa <> placa1 & placa <> placa2 Entonces
								nombreCompleto3 <- nombreCompleto;
								telefono3 <- telefonoNuevo;
								placa3 <- placa;
								marca3 <- marca;
								Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
								marcador <- 3;
							SiNo
								Si placa4 = "" & placa <> placa1 & placa <> placa2 & placa <> placa3 Entonces
									nombreCompleto4 <- nombreCompleto;
									telefono4 <- telefonoNuevo;
									placa4 <- placa;
									marca4 <- marca;
									Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
									marcador <- 4;
								SiNo
									Si placa5 = "" & placa <> placa1 & placa <> placa2 & placa <> placa3 & placa <> placa4 Entonces
										nombreCompleto5 <- nombreCompleto;
										telefono5 <- telefonoNuevo;
										placa5 <- placa;
										marca5 <- marca;
										Escribir "Su vehiculo ha sido registrado e ingresado al parqueadero.";
										marcador <- 5;
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
					Escribir "El vehiculo de placa ", placa1, " perteneciente a ", nombreCompleto1, " será retirado del parqueadero.";			
					nombreCompleto1 <- "";
					telefono1 <- "";
					placa1 <- "";
					marca1 <- "";
					marcador <- marcador - 1;
				SiNo
					Si placa = placa2 Entonces
						Escribir "El vehiculo de placa ", placa2, " perteneciente a ", nombreCompleto2, " será retirado del parqueadero.";			
						nombreCompleto2 <- "";
						telefono2 <- "";
						placa2 <- "";
						marca2 <- "";
						marcador <- marcador - 1;
					SiNo
						Si placa = placa3 Entonces
							Escribir "El vehiculo de placa ", placa3, " perteneciente a ", nombreCompleto3, " será retirado del parqueadero.";			
							nombreCompleto3 <- "";
							telefono3 <- "";
							placa3 <- "";
							marca3 <- "";
							marcador <- marcador - 1;
						SiNo
							Si placa = placa4 Entonces
								Escribir "El vehiculo de placa ", placa4, " perteneciente a ", nombreCompleto4, " será retirado del parqueadero.";			
								nombreCompleto4 <- "";
								telefono4 <- "";
								placa4 <- "";
								marca4 <- "";
								marcador <- marcador - 1;
							SiNo
								Si placa = placa5 Entonces
									Escribir "El vehiculo de placa ", placa5, " perteneciente a ", nombreCompleto5, " será retirado del parqueadero.";			
									nombreCompleto5 <- "";
									telefono5 <- "";
									placa5 <- "";
									marca5 <- "";
									marcador <- marcador - 1;
								SiNo
									Escribir "El vehiculo con placas ", placa, " no se encuentra en el parqueadero.";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			4:
				Escribir "Gracias por utilizar nuestro sistema de administración de parqueo de vehiculos.";
			De Otro Modo:
				Escribir "La opción elegida no existe.";
		FinSegun
	Hasta Que opcion = 4
FinProceso
