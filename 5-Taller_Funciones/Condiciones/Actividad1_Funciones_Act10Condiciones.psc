//Funcion 1-Organizar todos los puntos del taller de condicionales en modo funciones.//10-El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus 
//usuarios; por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. Para cada cliente las cuentas permitirán 
//realizar ingresos, retiros o consultas de valor. En los ingresos no se pueden insertar valores negativos y para los retiros el valor 
//no puede ser mayor al valor que tiene en la cuenta.

SubProceso cantidadCuenta <- consultarSaldo(cantidadCuenta, nombreTitular, identificacionTitular)
	Si cantidadCuenta = 0 Entonces
		Escribir "Lo sentimos mucho pero el usuario ", nombreTitular, " no tiene saldo en la cuenta para consultar." ;
	SiNo
		Escribir "El saldo del titular ", nombreTitular, " con identificación ", identificacionTitular, " es de $", cantidadCuenta;
	FinSi
FinSubProceso

SubProceso cantidadCuenta <- depositar(cantidadDeposito, nombreTitular, identificacionTitular)
	Definir cantidadCuenta Como Entero;
	
	cantidadCuenta <- 0;
	Si cantidadDeposito > 0 Entonces
		Escribir "Usted ha depositado $", cantidadDeposito, " pesos a nombre del titular ", nombreTitular;
		Escribir "";
		cantidadCuenta <- cantidadCuenta + cantidadDeposito;
	SiNo
		Escribir "El saldo depositado no puede ser negativo o 0, por favor valide la cantidad a depositar.";
		Escribir "";
	FinSi
FinSubProceso

SubProceso cantidadRetiro <- retirar(cantidadRetiro, cantidadCuenta, nombreTitular)
	Si cantidadRetiro > cantidadCuenta Entonces
		Escribir "El monto a retirar superar el saldo de la cuenta, por favor verifique de nuevo el monto a retirar o el saldo de su cuenta.";
		Escribir "";
	SiNo
		Escribir "Acaba de retirar $", cantidadRetiro, " de la cuenta del titular ", nombreTitular;
		cantidadCuenta <- cantidadCuenta - cantidadRetiro;
		Escribir "";
	FinSi
FinSubProceso

SubProceso excepcionMenu()
	Escribir "La opcion elegida no existe.";
FinSubProceso

SubProceso salirSistema()
	Escribir "Gracias por utilizar nuestro sistema bancario Su Banco Fiel.";
FinSubProceso

Proceso bancoFiel
	Definir nombreTitular Como Caracter;
	Definir identificacionTitular Como Caracter;
	Definir cantidadCuenta Como Entero;
	Definir cantidadCuentaDeposito Como Entero;
	Definir cantidadDeposito Como Entero;
	Definir cantidadRetiro Como Entero;
	Definir opcion Como Entero;
	
	cantidadCuenta <- 0;
	
	Repetir
		Escribir "Bienvenidos a su sistema bancario Su Banco Fiel, por favor seleccione una de las opciones presentadas a continuación:";
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
				Escribir "Identificación Titular.";
				Leer identificacionTitular;
				
				cantidadCuentaDeposito <- consultarSaldo(cantidadCuenta, nombreTitular, identificacionTitular);
				
				Escribir "";
			2:
				Escribir "Digite los siguientes campos para validar su identidad:";
				Escribir "Nombre Titular.";
				Leer nombreTitular;
				Escribir "Identificación Titular.";
				Leer identificacionTitular;
				Escribir "Digite el saldo a depositar:";
				Leer cantidadDeposito;
				
				cantidadCuenta <- depositar(cantidadDeposito, nombreTitular, identificacionTitular);
				cantidadCuentaDeposito <- cantidadCuenta + cantidadDeposito;
				Escribir "A continuación se mostrará de nuevo el menú por si desea seleccionar una nueva opción.";
				Escribir "";
			3:
				Escribir "Digite los siguientes campos para validar su identidad:";
				Escribir "Nombre Titular.";
				Leer nombreTitular;
				Escribir "Identificación Titular.";
				Leer identificacionTitular;
				Escribir "Digite el saldo a retirar:";
				Leer cantidadRetiro;
				
				cantidadRetiro <- retirar(cantidadRetiro, cantidadCuenta, nombreTitular); 
				cantidadCuenta <- cantidadCuenta - cantidadRetiro;
				Escribir "A continuación se mostrará de nuevo el menú por si desea seleccionar una nueva opción.";
				Escribir "";
			4:
				salirSistema();
			De Otro Modo:
				excepcionMenu();
		FinSegun
	Hasta Que opcion = 4
FinProceso
