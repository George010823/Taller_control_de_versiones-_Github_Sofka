Proceso bancoFiel
	//10-El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicaci�n para llevar las cuentas de sus 
	//usuarios; por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. Para cada cliente las cuentas permitir�n 
	//realizar ingresos, retiros o consultas de valor. En los ingresos no se pueden insertar valores negativos y para los retiros el valor 
	//no puede ser mayor al valor que tiene en la cuenta.
		
	Definir nombreTitular Como Caracter;
	Definir identificacionTitular Como Caracter;
	Definir cantidadCuenta Como Entero;
	Definir cantidadDeposito Como Entero;
	Definir cantidadRetiro Como Entero;
	Definir opcion Como Entero;
	
	cantidadCuenta <- 0;
	
	Repetir
		Escribir "Bienvenidos a su sistema bancario Su Banco Fiel, por favor seleccione una de las opciones presentadas a continuaci�n:";
		Escribir "1. Consultar saldo cuenta.";
		Escribir "2. Depositar.";
		Escribir "3. Retirar.";
		Escribir "4. Salir del sistema.";
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Digite los siguientes campos para validar su identidad:";
				Escribir "Nombre Titular.";
				Leer nombreTitular;
				Escribir "Identificaci�n Titular.";
				Leer identificacionTitular;
				
				Si cantidadCuenta = 0 Entonces
					Escribir "Lo sentimos mucho pero el usuario ", nombreTitular, " no tiene saldo en la cuenta para consultar." ;
				SiNo
					Escribir "El saldo del titular ", nombreTitular, " con identificaci�n ", identificacionTitular, " es de $", cantidadCuenta;
				FinSi
				Escribir "";
			2:
				Escribir "Digite los siguientes campos para validar su identidad:";
				Escribir "Nombre Titular.";
				Leer nombreTitular;
				Escribir "Identificaci�n Titular.";
				Leer identificacionTitular;
				Escribir "Digite el saldo a depositar:";
				Leer cantidadDeposito;
				Si cantidadDeposito > 0 Entonces
					Escribir "Usted ha depositado $", cantidadDeposito, " pesos a nombre del titular ", nombreTitular;
					Escribir "";
					cantidadCuenta <- cantidadCuenta + cantidadDeposito;
				SiNo
					Escribir "El saldo depositado no puede ser negativo o 0, por favor valide la cantidad a depositar.";
					Escribir "";
				FinSi
				Escribir "A continuaci�n se mostrar� de nuevo el men� por si desea seleccionar una nueva opci�n.";
				Escribir "";
			3:
				Escribir "Digite los siguientes campos para validar su identidad:";
				Escribir "Nombre Titular.";
				Leer nombreTitular;
				Escribir "Identificaci�n Titular.";
				Leer identificacionTitular;
				Escribir "Digite el saldo a retirar:";
				Leer cantidadRetiro;
				
				Si cantidadRetiro > cantidadCuenta Entonces
					Escribir "El monto a retirar superar el saldo de la cuenta, por favor verifique de nuevo el monto a retirar o el saldo de su cuenta.";
					Escribir "";
				SiNo
					Escribir "Acaba de retirar $", cantidadRetiro, " de la cuenta del titular ", nombreTitular;
					cantidadCuenta <- cantidadCuenta - cantidadRetiro;
					Escribir "";
				FinSi
				Escribir "A continuaci�n se mostrar� de nuevo el men� por si desea seleccionar una nueva opci�n.";
				Escribir "";
			4:
				Escribir "Gracias por utilizar nuestro sistema bancario Su Banco Fiel.";
			De Otro Modo:
				Escribir "La opci�n elegida no existe.";
		FinSegun
	Hasta Que opcion = 4
FinProceso
