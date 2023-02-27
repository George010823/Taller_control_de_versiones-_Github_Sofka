Proceso actividad8_EscuelaElMaestro
//8- La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza 
//automovilística y establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción. 
//Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la 
//prueba del curso (si fueron aprobados o no). Recuerde que el sistema debe terminar cuando el usuario así lo indique. Tenga presente que 
//la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
	Definir nombreCompleto Como Caracter;
	Definir nombreCompleto1 Como Caracter;
	Definir nombreCompleto2 Como Caracter;
	Definir nombreCompleto3 Como Caracter;
	Definir nombreCompleto4 Como Caracter;
	Definir nombreCompleto5 Como Caracter;
	Definir nombreCompleto6 Como Caracter;
	Definir nombreCompleto7 Como Caracter;
	Definir nombreCompleto8 Como Caracter;
	Definir idUsuario Como Entero;
	Definir idUsuario1 Como Entero;
	Definir idUsuario2 Como Entero;
	Definir idUsuario3 Como Entero;
	Definir idUsuario4 Como Entero;
	Definir idUsuario5 Como Entero;
	Definir idUsuario6 Como Entero;
	Definir idUsuario7 Como Entero;
	Definir idUsuario8 Como Entero;
	Definir presentoCurso Como Caracter;
	Definir presentoCurso1 Como Caracter;
	Definir presentoCurso2 Como Caracter;
	Definir presentoCurso3 Como Caracter;
	Definir presentoCurso4 Como Caracter;
	Definir presentoCurso5 Como Caracter;
	Definir presentoCurso6 Como Caracter;
	Definir presentoCurso7 Como Caracter;
	Definir presentoCurso8 Como Caracter;
	Definir pruebaUsuario Como Caracter;
	Definir pruebaUsuario1 Como Caracter;
	Definir pruebaUsuario2 Como Caracter;
	Definir pruebaUsuario3 Como Caracter;
	Definir pruebaUsuario4 Como Caracter;
	Definir pruebaUsuario5 Como Caracter;
	Definir pruebaUsuario6 Como Caracter;
	Definir pruebaUsuario7 Como Caracter;
	Definir pruebaUsuario8 Como Caracter;
	Definir opcion Como Entero;
	Definir marcador Como Entero;
	Definir presento Como Logico;
	
	marcador <- 0;
	idUsuario1 <- 0;
	idUsuario2 <- 0;
	idUsuario3 <- 0;
	idUsuario4 <- 0;
	idUsuario5 <- 0;
	idUsuario6 <- 0;
	idUsuario7 <- 0;
	idUsuario8 <- 0;
	pruebaUsuario <- "";
	presentoCurso1 <- "";
	presentoCurso2 <- "";
	presentoCurso3 <- "";
	presentoCurso4 <- "";
	presentoCurso5 <- "";
	presentoCurso6 <- "";
	presentoCurso7 <- "";
	presentoCurso8 <- "";
	presento <- Falso;
	
	Repetir
		Escribir "Bienvenidos a la escuela automovilística el Maestro:";
		Escribir "1. Registrar Usuario.";
		Escribir "2. Consultar Usuario.";
		Escribir "3. Consultar Resultados de la Pruebas de Usuario.";
		Escribir "4. Salir del sistema.";
		
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Escriba el nombre completo del usuario.";
				Leer nombreCompleto;
				Escribir "Escriba el número de identificación del usuario.";
				Leer idUsuario;
				
				Escribir "El usuario presento el curso?. Responda 1.SI o 2.NO.";
				Leer opcion;
				
				Si opcion = 1 Entonces
					presentoCurso <- "SI";
					Escribir "El usuario presento prueba. Responda 1.SI o 2.NO.";
					Leer opcion;
					Si opcion = 1 Entonces
						Escribir "El usuario aprobo la prueba. Responda SI o NO.";
						Leer pruebaUsuario;
						pruebaUsuario <- pruebaUsuario;
					FinSi
				SiNo
					presentoCurso <- "NO";
				FinSi
				
				Si marcador < 8 Entonces
					Si idUsuario1 = 0 Entonces
						nombreCompleto1 <- nombreCompleto;
						idUsuario1 <- idUsuario;
						presentoCurso1 <- presentoCurso;
						pruebaUsuario1 <- pruebaUsuario;
						Escribir "El usuario ", nombreCompleto1, " ha sido registrado en la escuela.";
						marcador <- 1;
					SiNo
						Si idUsuario2 = 0  & idUsuario <> idUsuario1 Entonces
							nombreCompleto2 <- nombreCompleto;
							idUsuario2 <- idUsuario;
							presentoCurso2 <- presentoCurso;
							pruebaUsuario2 <- pruebaUsuario;
							Escribir "El usuario ", nombreCompleto2, " ha sido registrado en la escuela.";
							marcador <- 2;
						SiNo
							Si idUsuario3 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 Entonces
								nombreCompleto3 <- nombreCompleto;
								idUsuario3 <- idUsuario;
								presentoCurso3 <- presentoCurso;
								pruebaUsuario3 <- pruebaUsuario;
								Escribir "El usuario ", nombreCompleto3, " ha sido registrado en la escuela.";
								marcador <- 3;
							SiNo
								Si idUsuario4 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 Entonces
									nombreCompleto4 <- nombreCompleto;
									idUsuario4 <- idUsuario;
									presentoCurso4 <- presentoCurso;
									pruebaUsuario4 <- pruebaUsuario;
									Escribir "El usuario ", nombreCompleto4, " ha sido registrado en la escuela.";
									marcador <- 4;
								SiNo
									Si idUsuario5 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 Entonces
										nombreCompleto5 <- nombreCompleto;
										idUsuario5 <- idUsuario;
										presentoCurso5 <- presentoCurso;
										pruebaUsuario5 <- pruebaUsuario;
										Escribir "El usuario ", nombreCompleto5, " ha sido registrado en la escuela.";
										marcador <- 5;
									SiNo
										Si idUsuario6 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 & idUsuario <> idUsuario5 Entonces
											nombreCompleto6 <- nombreCompleto;
											idUsuario6 <- idUsuario;
											presentoCurso6 <- presentoCurso;
											pruebaUsuario6 <- pruebaUsuario;
											Escribir "El usuario ", nombreCompleto6, " ha sido registrado en la escuela.";
											marcador <- 6;
										SiNo
											Si idUsuario7 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 & idUsuario <> idUsuario5 & idUsuario <> idUsuario6 Entonces
												nombreCompleto7 <- nombreCompleto;
												idUsuario7 <- idUsuario;
												presentoCurso7 <- presentoCurso;
												pruebaUsuario7 <- pruebaUsuario;
												Escribir "El usuario ", nombreCompleto7, " ha sido registrado en la escuela.";
												marcador <- 7;
											SiNo
												Si idUsuario8 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 & idUsuario <> idUsuario5 & idUsuario <> idUsuario6 & idUsuario <> idUsuario7 Entonces
													nombreCompleto8 <- nombreCompleto;
													idUsuario8 <- idUsuario;
													presentoCurso8 <- presentoCurso;
													pruebaUsuario8 <- pruebaUsuario;
													Escribir "El usuario ", nombreCompleto8, " ha sido registrado en la escuela.";
													marcador <- 8;
												SiNo
													Escribir "El usuario que desea registrar ya se encuentra matriculado.";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				SiNo
					Escribir "No se pueden registrar mas usuarios, la escuela ya tiene el cupo completo.";
				FinSi
			2:
				Escribir "Solo se mostrarán aquellos usuarios que hayan presentado el curso.";
				Escribir "";
				
				Si presentoCurso1 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto1, " con número de identificación ", idUsuario1, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;
				FinSi
				Si presentoCurso2 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto2, " con número de identificación ", idUsuario2, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso3 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto3, " con número de identificación ", idUsuario3, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso4 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto4, " con número de identificación ", idUsuario4, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso5 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto5, " con número de identificación ", idUsuario5, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso6 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto6, " con número de identificación ", idUsuario6, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso7 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto7, " con número de identificación ", idUsuario7, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso8 = "SI" Entonces
					Escribir "Nombre Usuario: ", nombreCompleto8, " con número de identificación ", idUsuario8, " se encuentra matriculado en nuestra escuela.";
					presento <- Verdadero;	
				FinSi
				
				Si presento = Falso Entonces
					Escribir "Ninguno de los usuarios registrados en la escuela ha presentado el curso";
				FinSi
				Escribir "";
			3:
				Escribir "Solo se mostrarán los resultados de los usuarios que hayan presentado el curso.";
				Escribir "";
				
				Si presentoCurso1 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto1, " con número de identificación ", idUsuario1, " se encuentra en estado ", pruebaUsuario1, " aprobado.";
					presento <- Verdadero;
				FinSi
				Si presentoCurso2 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto2, " con número de identificación ", idUsuario2, " se encuentra en estado ", pruebaUsuario2, " aprobado.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso3 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto3, " con número de identificación ", idUsuario3, " se encuentra en estado ", pruebaUsuario3, " aprobado.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso4 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto4, " con número de identificación ", idUsuario4, " se encuentra en estado ", pruebaUsuario4, " aprobado.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso5 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto5, " con número de identificación ", idUsuario5, " se encuentra en estado ", pruebaUsuario5, " aprobado.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso6 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto6, " con número de identificación ", idUsuario6, " se encuentra en estado ", pruebaUsuario6, " aprobado.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso7 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto7, " con número de identificación ", idUsuario7, " se encuentra en estado ", pruebaUsuario7, " aprobado.";
					presento <- Verdadero;	
				FinSi
				Si presentoCurso8 = "SI" Entonces
					Escribir "El usuario ", nombreCompleto8, " con número de identificación ", idUsuario8, " se encuentra en estado ", pruebaUsuario8, " aprobado.";
					presento <- Verdadero;	
				FinSi
				
				Si presento = Falso Entonces
					Escribir "Ninguno de los usuarios registrados en la escuela ha presentado el curso";
				FinSi
				Escribir "";
			4:
				Escribir "Gracias por utilizar nuestro sistema El Maestro.";
			De Otro Modo:
				Escribir "La opción elegida no existe.";
		FinSegun
	Hasta Que opcion = 4
FinProceso
