Proceso calcularArea
	//9-El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de diferentes figuras geom�tricas, 
	//para ello requiere una aplicaci�n que le facilite el ejercicio solicit�ndole los valores al estudiante. La aplicaci�n debe permitir 
	//que el estudiante seleccione si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio. No olvide solicitar los datos 
	//necesarios para realizar cada c�lculo y mostrar su respectivo resultado.
	
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
		Escribir "Seleccione la operaci�n que desea realizar:";
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
				
				areaFigura <- largoRectangulo * anchoRectangulo;
				
				Escribir "El area del rectangulo es: ", areaFigura, " metros cuadrados.";
				Escribir "";
			2:
				Escribir "//TRIANGULO AREA = (BASE * ALTURA)/2";
				Escribir "Escriba el valor de la base del triangulo:";
				Leer baseTriangulo;
				Escribir "Escriba el valor de la altura del triangulo:";
				Leer alturaTriangulo;
				
				areaFigura <- (baseTriangulo * alturaTriangulo) / 2;
				
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
				
				areaFigura <- ((baseUnoTrapecio + baseDosTrapecio) * alturaTrapecio) / 2;
				
				Escribir "El area del trapecio es: ", areaFigura, " metros cuadrados.";
				Escribir "";
			4:
				Escribir "Gracias por utilizar nuestro sistema de calculo de areas de figuras geometricas.";
			De Otro Modo:
				Escribir "La opci�n elegida no existe.";
		FinSegun
	Hasta Que opcion = 4;

FinProceso
