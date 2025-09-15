Funcion TomarDatos
	Definir nombre Como Caracter;
	Definir cantidad Como Entero;
	
	Escribir "Ingrese el nombre del producto: ";
	Leer nombre;
	
	Escribir "Ingrese la cantidada de producto: ";
	Leer cantidad;
FinFuncion

Funcion dato_valor <- tomar_valor(nombre, cantidad)
	Definir precio Como Real;
	
	Escribir "Ingrese el precio del porducto: ";
	Leer precio;
FinFuncion

SubProceso mostrar_mensaje(nombre, cantidad, precio)
Definir iva, subtotal, total Como Real;
	iva <- 0.19
	subtotal <- cantidad * precio
	total <- subtotal * iva
	
	Escribir "Nombre de producto" + nombre
	Escribir "precio sin iva: " + ConvertirATexto(subtotal)
	Escribir "Valor del iva aplicado: " + ConvertirATexto( iva);
	Escribir "El valor total es: ", total;
FinSubProceso

Algoritmo multiplicar_precioUnitario_por_cantidad_para_odtener_ivA
	// definir tipo de varibesv
	Definir usuario, saludo Como Caracter;
	Definir alternativa Como Entero;
	Definir i Como Entero;
	
	TomarDatos();
	dato_valor <- tomar_valor(nombre,cantidad);
	mostrar_mensaje(nombre, cantidad, precio)
	
	Para  i <- 1 Hasta 3 Con Paso 1 Hacer
	saludo <- "BIENVENIDO SEÑOR "
	
    Escribir "CREAR USUARIO";
	Escribir "Ingrese su nombre: ";
	Leer usuario;
	
	Escribir saludo + usuario;
	Escribir "";
	
	Escribir "1 Modificar usuario.";
	Escribir "2 Imprimir usuario.";
	Escribir "3 Salir del sistema.";
	Escribir "SELECCIONE UNA OPCIÓN.";
	Leer alternativa;
FinPara


FinAlgoritmo
