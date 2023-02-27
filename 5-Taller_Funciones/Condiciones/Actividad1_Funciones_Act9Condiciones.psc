//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//9-El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de diferentes figuras geométricas, 
//para ello requiere una aplicación que le facilite el ejercicio solicitándole los valores al estudiante. La aplicación debe permitir 
//que el estudiante seleccione si desea calcular el área de un rectángulo, triángulo o trapecio. No olvide solicitar los datos 
//necesarios para realizar cada cálculo y mostrar su respectivo resultado.

SubProceso areaFigura <- calcularAreaRectangulo(largoRectangulo, anchoRectangulo)
	Definir areaFigura Como Real;
	areaFigura <- largoRectangulo * anchoRectangulo;
FinSubProceso

SubProceso areaFigura <- calcularAreaTriangulo(baseTriangulo, alturaTriangulo)
	Definir areaFigura Como Real;
	areaFigura <- (baseTriangulo * alturaTriangulo) / 2;
FinSubProceso

SubProceso areaFigura <- calcularAreaTrapecio(baseUnoTrapecio, baseDosTrapecio, alturaTrapecio)
	Definir areaFigura Como Real;
	areaFigura <- ((baseUnoTrapecio + baseDosTrapecio) * alturaTrapecio) / 2;
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

SubProceso salirSistema()
	Escribir "Gracias por utilizar nuestro sistema de calculo de areas de figuras geometricas.";
FinSubProceso

Proceso calcularArea
	Definir largoRectangulo Como Real;
	Definir anchoRectangulo Como Real;
	Definir baseTriangulo Como Real;
	Definir alturaTriangulo Como Real;
	Definir baseUnoTrapecio Como Real;
	Definir baseDosTrapecio Como Real;
	Definir alturaTrapecio Como Real;
	Definir areaFigura Como Real;
	Definir opcion Como Entero;
	
	Repetir
		Escribir "Seleccione la operación que desea realizar:";
		Escribir "1. Calcular area de un rectangulo.";
		Escribir "2. Calcular area de un triangulo.";
		Escribir "3. Calcular area de un trapecio.";
		Escribir "4. Salir del sistema.";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "//RECTANGULO AREA = BASE * ALTURA";
				Escribir "Escriba el valor del largo del rectangulo:";
				Leer largoRectangulo;
				Escribir "Escriba el valor del ancho del rectangulo:";
				Leer anchoRectangulo;
				
				areaFigura <- calcularAreaRectangulo(largoRectangulo, anchoRectangulo);
				
				Escribir "El area del rectangulo es: ", areaFigura, " metros cuadrados.";
				Escribir "";
			2:
				Escribir "//TRIANGULO AREA = (BASE * ALTURA)/2";
				Escribir "Escriba el valor de la base del triangulo:";
				Leer baseTriangulo;
				Escribir "Escriba el valor de la altura del triangulo:";
				Leer alturaTriangulo;
				
				areaFigura <- calcularAreaTriangulo(baseTriangulo, alturaTriangulo);
				
				Escribir "El area del trapecio es: ", areaFigura, " metros cuadrados.";
				Escribir "";
			3:
				Escribir "//TRAPECIO AREA = ((BASE + BASE) * ALTURA)/2";
				Escribir "Escriba el valor de la base 1 del trapecio:";
				Leer baseUnoTrapecio;
				Escribir "Escriba el valor de la base 2 del trapecio:";
				Leer baseDosTrapecio;
				Escribir "Escriba el valor de la altura del trapecio:";
				Leer alturaTrapecio;
				
				areaFigura <- calcularAreaTrapecio(baseUnoTrapecio, baseDosTrapecio, alturaTrapecio);
				
				Escribir "El area del trapecio es: ", areaFigura, " metros cuadrados.";
				Escribir "";
			4:
				salirSistema();
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que opcion = 4;
FinProceso
