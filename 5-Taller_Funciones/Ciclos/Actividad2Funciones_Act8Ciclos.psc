//Funciones 2 Organizar los puntos 6, 7 y 8 del taller de ciclos en modo funciones.
//8- La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza 
//automovilística y establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción. 
//Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la 
//prueba del curso (si fueron aprobados o no). Recuerde que el sistema debe terminar cuando el usuario así lo indique. Tenga presente que 
//la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
SubProceso presentoCurso <- registrarUsuario(nombreCompleto, nombreCompleto, presentoCurso, presentoCurso)
	nombreCompleto <- nombreCompleto;
	presentoCurso <- presentoCurso;
	Escribir "El usuario ", nombreCompleto, " ha sido registrado en la escuela.";
FinSubProceso

SubProceso consultarUsuario(nombreCompleto, idUsuario)
	Escribir "Nombre Usuario: ", nombreCompleto, " con número de identificación ", idUsuario, " se encuentra matriculado en nuestra escuela.";
FinSubProceso

SubProceso consultarResultados(nombreCompleto, idUsuario, pruebaUsuario)
	Escribir "El usuario ", nombreCompleto, " con número de identificación ", idUsuario, " se encuentra en estado ", pruebaUsuario, " aprobado.";
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

SubProceso salirSistema()
	Escribir "Gracias por utilizar nuestro sistema El Maestro.";
FinSubProceso

Proceso actividad8_EscuelaElMaestro
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
	nombreCompleto1 <- "";
	nombreCompleto2 <- "";
	nombreCompleto3 <- "";
	nombreCompleto4 <- "";
	nombreCompleto5 <- "";
	nombreCompleto6 <- "";
	nombreCompleto7 <- "";
	nombreCompleto8 <- "";
	pruebaUsuario1 <- "";
	pruebaUsuario2 <- "";
	pruebaUsuario3 <- "";
	pruebaUsuario4 <- "";
	pruebaUsuario5 <- "";
	pruebaUsuario6 <- "";
	pruebaUsuario7 <- "";
	pruebaUsuario8 <- "";

	
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
					SiNo
						pruebaUsuario <- "NO";
					FinSi
				SiNo
					presentoCurso <- "NO";
				FinSi
				
				Si marcador < 8 Entonces
					Si idUsuario1 = 0 Entonces
						presentoCurso1 <- registrarUsuario(nombreCompleto1, nombreCompleto, presentoCurso1, presentoCurso);
						nombreCompleto1 <- nombreCompleto;
						idUsuario1 <- idUsuario;
						pruebaUsuario1 <- pruebaUsuario;
						marcador <- 1;
					SiNo
						Si idUsuario2 = 0  & idUsuario <> idUsuario1 Entonces
							presentoCurso2 <- registrarUsuario(nombreCompleto2, nombreCompleto, presentoCurso2, presentoCurso);
							nombreCompleto2 <- nombreCompleto;
							idUsuario2 <- idUsuario;
							pruebaUsuario2 <- pruebaUsuario;
							marcador <- 2;
						SiNo
							Si idUsuario3 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 Entonces
								presentoCurso3 <- registrarUsuario(nombreCompleto3, nombreCompleto, presentoCurso3, presentoCurso);
								nombreCompleto3 <- nombreCompleto;
								idUsuario3 <- idUsuario;
								pruebaUsuario3 <- pruebaUsuario;
								marcador <- 3;
							SiNo
								Si idUsuario4 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 Entonces
									presentoCurso4 <- registrarUsuario(nombreCompleto4, nombreCompleto, presentoCurso4, presentoCurso);
									nombreCompleto4 <- nombreCompleto;
									idUsuario4 <- idUsuario;
									pruebaUsuario4 <- pruebaUsuario;
									marcador <- 4;
								SiNo
									Si idUsuario5 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 Entonces
										presentoCurso5 <- registrarUsuario(nombreCompleto5, nombreCompleto, presentoCurso5, presentoCurso);
										nombreCompleto5 <- nombreCompleto;
										idUsuario5 <- idUsuario;
										pruebaUsuario5 <- pruebaUsuario;
										marcador <- 5;
									SiNo
										Si idUsuario6 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 & idUsuario <> idUsuario5 Entonces
											presentoCurso6 <- registrarUsuario(nombreCompleto6, nombreCompleto, presentoCurso6, presentoCurso);
											nombreCompleto6 <- nombreCompleto;
											idUsuario6 <- idUsuario;
											pruebaUsuario6 <- pruebaUsuario;
											marcador <- 6;
										SiNo
											Si idUsuario7 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 & idUsuario <> idUsuario5 & idUsuario <> idUsuario6 Entonces
												presentoCurso7 <- registrarUsuario(nombreCompleto7, nombreCompleto, presentoCurso7, presentoCurso);
												nombreCompleto7 <- nombreCompleto;
												idUsuario7 <- idUsuario;
												pruebaUsuario7 <- pruebaUsuario;
												marcador <- 7;
											SiNo
												Si idUsuario8 = 0  & idUsuario <> idUsuario1 & idUsuario <> idUsuario2 & idUsuario <> idUsuario3 & idUsuario <> idUsuario4 & idUsuario <> idUsuario5 & idUsuario <> idUsuario6 & idUsuario <> idUsuario7 Entonces
													presentoCurso8 <- registrarUsuario(nombreCompleto8, nombreCompleto, presentoCurso8, presentoCurso);
													nombreCompleto8 <- nombreCompleto;
													idUsuario8 <- idUsuario;
													pruebaUsuario8 <- pruebaUsuario;
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
					consultarUsuario(nombreCompleto1, idUsuario1);
					presento <- Verdadero;
				FinSi
				Si presentoCurso2 = "SI" Entonces
					consultarUsuario(nombreCompleto2, idUsuario2);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso3 = "SI" Entonces
					consultarUsuario(nombreCompleto3, idUsuario3);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso4 = "SI" Entonces
					consultarUsuario(nombreCompleto4, idUsuario4);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso5 = "SI" Entonces
					consultarUsuario(nombreCompleto5, idUsuario5);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso6 = "SI" Entonces
					consultarUsuario(nombreCompleto6, idUsuario6);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso7 = "SI" Entonces
					consultarUsuario(nombreCompleto7, idUsuario7);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso8 = "SI" Entonces
					consultarUsuario(nombreCompleto8, idUsuario8);
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
					consultarResultados(nombreCompleto1, idUsuario1, pruebaUsuario1);
					presento <- Verdadero;
				FinSi
				Si presentoCurso2 = "SI" Entonces
					consultarResultados(nombreCompleto2, idUsuario2, pruebaUsuario2);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso3 = "SI" Entonces
					consultarResultados(nombreCompleto3, idUsuario3, pruebaUsuario3);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso4 = "SI" Entonces
					consultarResultados(nombreCompleto4, idUsuario4, pruebaUsuario4);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso5 = "SI" Entonces
					consultarResultados(nombreCompleto5, idUsuario5, pruebaUsuario5);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso6 = "SI" Entonces
					consultarResultados(nombreCompleto6, idUsuario6, pruebaUsuario6);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso7 = "SI" Entonces
					consultarResultados(nombreCompleto7, idUsuario7, pruebaUsuario7);
					presento <- Verdadero;	
				FinSi
				Si presentoCurso8 = "SI" Entonces
					consultarResultados(nombreCompleto8, idUsuario8, pruebaUsuario8);
					presento <- Verdadero;	
				FinSi
				
				Si presento = Falso Entonces
					Escribir "Ninguno de los usuarios registrados en la escuela ha presentado el curso";
				FinSi
				Escribir "";
			4:
				salirSistema();
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que opcion = 4
FinProceso
