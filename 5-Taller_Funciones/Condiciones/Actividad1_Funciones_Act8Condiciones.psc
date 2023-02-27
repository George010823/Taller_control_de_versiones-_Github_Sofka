//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//8-El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita registrar los pedidos de los 
//clientes en cuanto a las tortas que realiza. Cada torta tiene unas características propias como sabor, cantidad (porciones) 
//y decoraciones). Se requiere que la aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren 
//diariamente.

SubProceso tortasDisponibles <- registrarInventario(tortasDisponibles)
	Definir aumentarInventario Como Caracter;
	Definir adicionarTortas Como Entero;

	Si tortasDisponibles > 0 Entonces
		Escribir "Total de tortas disponibles para el dia de hoy son: ", tortasDisponibles;
		Escribir "";
		Escribir "Desea agregar mas tortas al inventario? SI/NO:";
		Leer aumentarInventario;
		
		Si aumentarInventario = "SI" Entonces
			Escribir "Escriba el número de tortas a adicionar al inventario:";
			Leer adicionarTortas;
			tortasDisponibles <- tortasDisponibles + adicionarTortas;
			Escribir "Cantidad total de tortas disponibles para el dÍa de hoy son: ", tortasDisponibles;
			Escribir  "";
		SiNo
			Escribir "Cantidad total de tortas disponibles para el dÍa de hoy son: ", tortasDisponibles;
			Escribir  "";
		FinSi
	SiNo
		Escribir "Digite el número de tortas disponibles para el dÍa de hoy.";
		Leer tortasDisponibles;
		Escribir "Total de tortas disponibles para el dÍa de hoy son: ", tortasDisponibles;
		Escribir "";
	FinSi
FinSubProceso

SubProceso totalVentas <- registrarPedido(tortasDisponibles)
	Definir nombreCliente Como Caracter;
	Definir saborTorta Como Caracter;
	Definir opcion Como Entero;
	Definir valorCantidadPorciones Como Entero;
	Definir valorDecoracion Como Entero;
	Definir valorTorta Como Entero;
	Definir totalVentas Como Entero;
	Definir totalVentasAnterior Como Entero;
	
	valorCantidadPorciones <- 0;
	totalVentas <- 0;
	
	Si tortasDisponibles = 0 Entonces
		Escribir "No hay inventario dipsonibles para ventas el dÍa de hoy, debe primero registrar la cantidad de tortas disponibles para la venta.";
		Escribir "";
	SiNo
		Escribir "Registre el pedido, diligenciando los datos a continuación:";
		Escribir "Nombre cliente.";
		Leer nombreCliente;
		Escribir "Sabor de la torta:";
		Leer saborTorta;
		
		Escribir "Seleccione la cantidad de porciones que desea para la torta.";
		Escribir "1. 10 porciones.";
		Escribir "2. 20 porciones.";
		Escribir "3. 30 porciones.";
		Escribir "4. 40 porciones.";
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				valorCantidadPorciones <- 1000;
				Escribir "El valor de la torta de 10 porciones es de 1000 pesos.";
			2:	
				valorCantidadPorciones <- 2000;
				Escribir "El valor de la torta de 10 porciones es de 2000 pesos.";
			3:	
				valorCantidadPorciones <- 3000;
				Escribir "El valor de la torta de 10 porciones es de 3000 pesos.";
			4:	
				valorCantidadPorciones <- 4000;
				Escribir "El valor de la torta de 10 porciones es de 4000 pesos.";
		FinSegun
		
		Escribir "Seleccione el tipo de decoración que desea incluir en la torta.";
		Escribir "1. Matrimonio.";
		Escribir "2. Cumpleaños.";
		Escribir "3. Dia del Padre/Madre.";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				valorDecoracion <- 300;
				Escribir "El costo de la decoración para tortas de matrimonio es de 300 pesos.";
			2:
				valorDecoracion <- 200;
				Escribir "El costo de la decoración para tortas de matrimonio es de 200 pesos.";
			3:
				valorDecoracion <- 100;
				Escribir "El costo de la decoración para tortas de matrimonio es de 100 pesos.";
				Escribir "";
		FinSegun
		
		valorTorta <- valorCantidadPorciones + valorDecoracion;
		Escribir "El costo total de la torta para el cliente ", nombreCliente, " es: $", valorTorta;
		Escribir "";
		totalVentas <- calcularVenta(totalVentas, valorTorta);
		tortasDisponibles <- tortasDisponibles - 1;
		totalVentasAnterior <- ventaAnterior(totalVentas, valorTorta);
	FinSi
FinSubProceso

SubProceso totalVentas <- calcularVenta(totalVentas, valorTorta)
	totalVentas <- totalVentas + valorTorta;
FinSubProceso

SubProceso totalVentasAnterior <- ventaAnterior(totalVentas, valorTorta)
	totalVentas <- totalVentas + valorTorta;
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

SubProceso salirSistema()
	Escribir "Gracias por utilizar nuestro sistema de la Pasteleria Don Carlos.";
FinSubProceso

Proceso pasteleriaCarlos
	Definir nombreCliente Como Caracter;
	Definir cantidadPorciones Como Caracter;
	Definir TipoDecoracionTorta Como Caracter;
	Definir tortasDisponibles Como Entero;
	Definir totalVentas Como Entero;
	Definir valorTorta Como Entero;
	Definir opcion Como Entero;
	Definir totalVentasAnterior Como Entero;
	
	valorTorta <- 0;
	tortasDisponibles <- 0;
	totalVentas <- 0;
	
	Repetir
		Escribir "Bienvenidos a su Pasteleria Don Carlos, por favor seleccione una de las opciones presentadas a continuación:";
		Escribir "1. Registrar inventario de tortas disponibles.";
		Escribir "2. Registrar pedido nuevo.";
		Escribir "3. Revisar total ventas diarias.";
		Escribir "4. Salir del sistema.";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				tortasDisponibles <- registrarInventario(tortasDisponibles);
			2:
				totalVentas <- registrarPedido(tortasDisponibles);
			3:
				totalVentasAnterior <- ventaAnterior(totalVentas, valorTorta);
				totalVentas <- totalVentas + totalVentasAnterior;
				Escribir "El total de ventas del día hoy es de: $", totalVentas;
				Escribir "";
			4:
				salirSistema();
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que opcion = 4;
FinProceso
