//Funciones 3-Organizar todos los puntos del taller de arreglos en modo funciones.
//5- Se debe de imprimir el siguiente cuadro
//El usuario deberá insertar la fila y columna de la cual desea ver el resultado, el resultado de cada celda debe estar previamente calculado 
//en una matriz bidimensional la cual cada resultado obedecerá a la fila y columna insertada por el usuario.
SubProceso resultado <- matrizMultiplicacion(resultado, fila, columna, matriz)	
	resultado <- matriz[fila,columna];
FinSubProceso

Proceso Actividad5_Arreglos
	Definir inicioFila, inicioColumna, fila, columna, matriz, resultado Como Entero;
	Dimension matriz[10,10];
	
	//FILA 0 Tabla del 1                          //FILA 1 Tabla del 2                      //FILA 2 Tabla del 3
	matriz[0,0] <- 1*1; matriz[0,5] <- 6;         matriz[1,0] <- 2;  matriz[1,5] <- 12;        matriz[2,0] <- 3;  matriz[2,5] <- 18; 
	matriz[0,1] <- 2*1; matriz[0,6] <- 7;         matriz[1,1] <- 4;  matriz[1,6] <- 14;        matriz[2,1] <- 6;  matriz[2,6] <- 21; 
	matriz[0,2] <- 3*1; matriz[0,7] <- 8;         matriz[1,2] <- 6;  matriz[1,7] <- 16;        matriz[2,2] <- 9;  matriz[2,7] <- 24; 
	matriz[0,3] <- 4*1; matriz[0,8] <- 9;         matriz[1,3] <- 8;  matriz[1,8] <- 18;        matriz[2,3] <- 12; matriz[2,8] <- 27; 
	matriz[0,4] <- 5*1; matriz[0,9] <- 10;        matriz[1,4] <- 10; matriz[1,9] <- 20;        matriz[2,4] <- 15; matriz[2,9] <- 30; 
	
	//FILA 3 Tabla del 4                        //FILA 4 Tabla del 5                       //FILA 5 Tabla del 6
	matriz[3,0] <- 4;  matriz[3,5] <- 24;        matriz[4,0] <- 5;  matriz[4,5] <- 30;        matriz[5,0] <- 6;   matriz[5,5] <- 36; 
	matriz[3,1] <- 8;  matriz[3,6] <- 28;        matriz[4,1] <- 10; matriz[4,6] <- 35;        matriz[5,1] <- 12;  matriz[5,6] <- 42; 
	matriz[3,2] <- 12; matriz[3,7] <- 32;        matriz[4,2] <- 15; matriz[4,7] <- 40;        matriz[5,2] <- 18;  matriz[5,7] <- 48; 
	matriz[3,3] <- 16; matriz[3,8] <- 36;        matriz[4,3] <- 20; matriz[4,8] <- 45;        matriz[5,3] <- 24;  matriz[5,8] <- 54; 
	matriz[3,4] <- 20; matriz[3,9] <- 40;        matriz[4,4] <- 25; matriz[4,9] <- 50;        matriz[5,4] <- 30;  matriz[5,9] <- 60; 
	
	//FILA 6 Tabla del 7                           //FILA 7 Tabla del 8                      //FILA 8 Tabla del 9
	matriz[6,0] <- 7;  matriz[6,5] <- 42;        matriz[7,0] <- 8;   matriz[7,5] <- 48;        matriz[8,0] <- 9;   matriz[8,5] <- 54; 
	matriz[6,1] <- 14; matriz[6,6] <- 49;        matriz[7,1] <- 16;  matriz[7,6] <- 56;        matriz[8,1] <- 18;  matriz[8,6] <- 63; 
	matriz[6,2] <- 21; matriz[6,7] <- 56;        matriz[7,2] <- 24;  matriz[7,7] <- 64;        matriz[8,2] <- 27;  matriz[8,7] <- 72; 
	matriz[6,3] <- 28; matriz[6,8] <- 63;        matriz[7,3] <- 32;  matriz[7,8] <- 72;        matriz[8,3] <- 36;  matriz[8,8] <- 81; 
	matriz[6,4] <- 35; matriz[6,9] <- 70;        matriz[7,4] <- 40;  matriz[7,9] <- 80;        matriz[8,4] <- 45;  matriz[8,9] <- 90; 
	
	//FILA 9 Tabla del 10                        
	matriz[9,0] <- 10; matriz[9,5] <- 60;          
	matriz[9,1] <- 20; matriz[9,6] <- 70;         
	matriz[9,2] <- 30; matriz[9,7] <- 80;        
	matriz[9,3] <- 40; matriz[9,8] <- 90;       
	matriz[9,4] <- 50; matriz[9,9] <- 100;     
	
	resultado <- 0;
	
	Escribir "                                      COLUMNAS";
	Escribir "         0      1      2      3      4      5      6      7      8       9";
	Escribir "    0   1x1    2x1    3x1    4x1    5x1    6x1    7x1    8x1    9x1    10x1";
	Escribir "    1   1x2    2x2    3x2    4x2    5x2    6x2    7x2    8x2    9x2    10x2";
	Escribir " F  2   1x3    2x3    3x3    4x3    5x3    6x3    7x3    8x3    9x3    10x3";
	Escribir " I  3   1x4    2x4    3x4    4x4    5x4    6x4    7x4    8x4    9x4    10x5";
	Escribir " L  4   1x5    2x5    3x5    4x5    5x5    6x5    7x5    8x5    9x5    10x5";
	Escribir " A  5   1x6    2x6    3x6    4x6    5x6    6x6    7x6    8x6    9x6    10x6";
	Escribir " S  6   1x7    2x7    3x7    4x7    5x7    6x7    7x7    8x7    9x7    10x7";
	Escribir "    7   1x8    2x8    3x8    4x8    5x8    6x8    7x8    8x8    9x8    10x8";
	Escribir "    8   1x9    2x9    3x9    4x9    5x9    6x9    7x9    8x9    9x9    10x9";
	Escribir "    9   1x10   2x10   3x10   4x10   5x10   6x10   7x10   8x10   9x10   10x10";
	Escribir "";
	Escribir "Ingrese la fila y columna de la cual desea ver el resultado.";
	Escribir "Fila:";
	Leer fila;
	Escribir "Columna:";
	Leer columna;
	
	resultado <- matrizMultiplicacion(resultado, fila, columna, matriz);
	
	Escribir "El resultado es ",resultado;
FinProceso
