//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.
//5- La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para poder facturar los productos 
//que vende a sus clientes y para ello, los productos tienen unas características que deben indicársele al cliente para que pueda 
//escoger el producto a comprar. Para cada cliente, se tienen las opciones de compra de producto, consulta de precios por producto 
//y devoluciones en caso de que se presenten.

SubProceso comprarProducto(opcion)
	Definir producto Como Caracter;
	Segun opcion Hacer
		1:
			Escribir "Muchas gracias por su compra, reciba su factura del producto Acetaminofen y regrese pronto";
		2:
			Escribir "Muchas gracias por su compra, reciba su factura del producto Ibuprofeno y regrese pronto";
		3:
			Escribir "Muchas gracias por su compra, reciba su factura del producto Dolex y regrese pronto";
		4:
			Escribir "Muchas gracias por su compra, reciba su factura del producto Vitamina C y regrese pronto";
		5:
			Escribir "Escriba el nombre del producto que desea validar si esta disponible.";
			Leer producto;
			Si producto == "Isodine" Entonces
				Escribir "Muchas gracias por la compra del producto ", producto, " reciba su factura del producto Isodine y regrese pronto.";
			SiNo
				Escribir "Lo sentimos mucho, el producto ", producto, " no se encuentra en nuestro inventario.";
			FinSi
		De Otro Modo:
			excepcionMenu();
	FinSegun
FinSubProceso

SubProceso consultarPrecio(opcion)
	Definir producto Como Caracter;
	Segun opcion Hacer
		1:
			Escribir "Tableta de Acetaminofem x 10 Und 1500 pesos.";
		2:
			Escribir "Tableta de Ibuprofeno x 2 Und 2500 pesos.";
		3:
			Escribir "Dolex por unidad 700 pesos.";
		4:
			Escribir "Tableta de Vitamina C x 10 Und 3500 pesos.";
		5:
			Escribir "Escriba el nombre del producto que desea conocer el precio.";
			Leer producto;
			Si producto == "Isodine" Entonces
				Escribir producto, " gargaras 4500 pesos.";
			SiNo
				Escribir "Lo sentimos mucho, el producto ", producto, " no se encuentra en nuestro inventario.";
			FinSi
		De Otro Modo:
			excepcionMenu();
	FinSegun
FinSubProceso

SubProceso devoluciones(opcion, producto)
	Segun opcion Hacer
		1:
			Escribir "Disculpe las molestias, su producto ", producto, " sera cambiado. Aplican terminos y condiciones.";
		2:
			Escribir "Disculpe las molestias, el dinero de su producto ", producto, " sera devuelto.";
		De Otro Modo:
			excepcionMenu();
	FinSegun
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

Proceso drogueriaMiSalud
	Definir opcion Como Entero;
	Definir producto Como Caracter;
	
	Escribir "Seleccione una opcion a continuación:";
	Escribir "1. Comprar Producto.";
	Escribir "2. Consultar Precios.";
	Escribir "3. Devoluciones.";
	
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Seleccione el producto que quiere comprar:";
			Escribir "1. Acetaminofem";
			Escribir "2. Ibuprofeno";
			Escribir "3. Dolex";
			Escribir "4. Vitamina C";
			Escribir "5. Un producto diferente de la lista:";
			
			Leer opcion;
			comprarProducto(opcion);
		2:
			Escribir "Seleccione el producto del cual desea conocer el precio:";
			Escribir "1. Acetaminofem";
			Escribir "2. Ibuprofeno";
			Escribir "3. Dolex";
			Escribir "4. Vitamina C";
			Escribir "5. Un producto diferente de la lista:";
			
			Leer opcion;
			consultarPrecio(opcion);
		3:
			Escribir "Escriba el nombre del producto que desea devolver:";
			Leer producto;
			Escribir "Desea el cambio del producto o la devolucion de su dinero?";
			Escribir "1. Cambio de producto.";
			Escribir "2. Devolucion de dinero.";
			
			Leer opcion;
			devoluciones(opcion, producto);
		De Otro Modo:
			excepcionMenu();
	FinSegun
FinProceso
