Proceso Actividad5_Mascota
//Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo. 
//Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje: [Nombre de Mascota] es un(a) [Tipo de Mascota], 
//el cual, tiene [Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombreApellido Como Caracter;
	
	Escribir "Complete los datos solicitados a continuación:";
	Escribir "Escriba el nombre de su mascota:";
	Leer nombreMascota;
	Escribir "Escriba la edad de su mascota:";
	Leer edadMascota;
	Escribir "Que tipo de mascota tiene:";
	Leer tipoMascota;
	Escribir "Escriba su Nombre completo:";
	Leer nombreApellido;
	
	
	Escribir nombreMascota, " es un(a) ", tipoMascota, " el cual, tiene ", edadMascota, " años de edad y ", nombreApellido, " es actualmente su dueñ(a)";

FinProceso
