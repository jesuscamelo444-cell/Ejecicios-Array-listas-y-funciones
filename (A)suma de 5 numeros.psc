Funcion suma <- Pedir_numeros
    Definir contador, num, lista Como Entero;
    Definir suma Como Entero;
    Dimension lista[5]
	
    Para contador <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el n�mero ", contador, ": ";
        Leer num;
        suma <- suma + num;
		Lista[contador] <- num;
    FinPara
FinFuncion

Funcion resultado <- resultado_suma(suma)
    Definir resultado Como Entero;
    resultado <- suma;
FinFuncion

SubProceso Mostrar_resultado(resultado)
    
    Escribir "La suma de los 5 n�meros es: ", resultado;
	
FinSubProceso

Algoritmo Suma_5_numeros
    Definir suma, resultado Como Entero;
	suma <- 0
	Repetir
		Escribir "------ MEN� ------"
        Escribir "1. Ingresar n�meros"
        Escribir "2. Mostrar suma"
		Escribir "3. Salir"
        Escribir "Seleccione una opci�n: "
		Leer opcion
		Segun opcion Hacer
            1:
				suma <- Pedir_numeros;
            2:
                Mostrar_resultado(suma)
			3:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opci�n inv�lida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 3
FinAlgoritmo
