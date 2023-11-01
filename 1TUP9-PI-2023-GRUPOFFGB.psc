Funcion reservarTurno = agendarTurno(agendaVacunatorio, stockVacunas, vacunas, pacientesListado, dim Por Referencia, turnosOtorgados Por Referencia)
	Definir turno, i, x, j, opcionVacuna, dia, hora Como Entero
	definir bandera, verAgenda Como Logico
	bandera = Verdadero
	verAgenda = mostrarAgenda(agendaVacunatorio)
	Escribir "Seleccione un turno: "
	Leer dia, hora
	agendaVacunatorio[dia,hora] = "-"
	Escribir "Ingrese su nombre: "
	Leer pacientesListado[dim-1, 0]
	Escribir "Ingrese su apellido:"
	Leer pacientesListado[dim-1, 1]
	Escribir "Ingrese su DNI: "
	Leer pacientesListado[dim-1, 2]
	Escribir "Ingrese su edad: "
	Leer pacientesListado[dim-1, 3]
	Escribir "Ingrese el n�mero de la vacuna:"
	Para i = 0 hasta 5 Con Paso 1 Hacer
		x = i +1
		Mostrar x, " ", vacunas[i]
		Mientras stockVacunas[i] < 0 y bandera = Verdadero Hacer
			Escribir "No hay stock de la vacuna."
			bandera = Falso
		FinMientras
	FinPara
	Leer opcionVacuna
	si bandera = Verdadero Entonces
		segun opcionVacuna Hacer
			1:
				pacientesListado[dim-1, 4] = "Neumococo conjugada"
				stockVacunas[0] = stockVacunas[0] - 1
			2:
				pacientesListado[dim-1, 4] = "Poliomielitis (IPV o Salk)"
				stockVacunas[1] = stockVacunas[1] - 1
			3:
				pacientesListado[dim-1, 4] = "Qu�ntuple (o pentavalente)"
				stockVacunas[2] = stockVacunas[2] - 1
			4: 
				pacientesListado[dim-1, 4] = "Rotavirus"
				stockVacunas[3] = stockVacunas[3] - 1
			5:
				pacientesListado[dim-1, 4] = "Meningococo"
				stockVacunas[4] = stockVacunas[4] - 1
			6:
				pacientesListado[dim-1, 4] = "Tripe Viral"
				stockVacunas[5] = stockVacunas[5] - 1
		FinSegun
		Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
			para j = 0 Hasta 4 con paso 1 Hacer
				Escribir pacientesListado[i, j]
			FinPara
		FinPara
	FinSi
	turnosOtorgados = turnosOtorgados + 1
FinFuncion

Proceso vacunatorio
	Definir pacientes, dim Como Entero
	dim = 5
    Definir pacientesListado Como Cadena
    Dimension pacientesListado[20 ,5]// [Nombre,Apellido, DNI, Edad, Vacuna]
	pacientesListado[0,0] <- "Gonzalo"
	pacientesListado[0,1] <- "Benitez"
	pacientesListado[0,2] <- "37345678"
	pacientesListado[0,3] <- "19"
	pacientesListado[0,4] <- "Neumococo conjugada"
	
	pacientesListado[1,0] <- "Marco"
	pacientesListado[1,1] <- "Gonzales"
	pacientesListado[1,2] <- "23456178"
	pacientesListado[1,3] <- "35"
	pacientesListado[1,4] <- "Rotavirus"
	
	pacientesListado[2,0] <- "Jorge"
	pacientesListado[2,1] <- "Martinez"
	pacientesListado[2,2] <- "28341924"
	pacientesListado[2,3] <- "27"
	pacientesListado[2,4] <- "Tripe Viral"
	
	pacientesListado[3,0] <- "Santino"
	pacientesListado[3,1] <- "Castellanos"
	pacientesListado[3,2] <- "47238921"
	pacientesListado[3,3] <- "17"
	pacientesListado[3,4] <- "Poliomielitis (IPV o Salk)"
	
	pacientesListado[4,0] <- "Julian"
	pacientesListado[4,1] <- "Diaz"
	pacientesListado[4,2] <- "41789283"
	pacientesListado[4,3] <- "15"
	pacientesListado[4,4] <- "Qu�ntuple (o pentavalente)"
	
	Definir vacunas Como Cadena
	Dimension vacunas[6]
	vacunas[0] <- "Neumococo conjugada"
	vacunas[1] <- "Poliomielitis (IPV o Salk)"
	vacunas[2] <- "Qu�ntuple (o pentavalente)"
	vacunas[3] <- "Rotavirus"
	vacunas[4] <- "Meningococo"
	vacunas[5] <- "Tripe Viral"
	
    Definir stockVacunas Como Entero
    Dimension stockVacunas[6]
    stockVacunas[0] <- 10
    stockVacunas[1] <- 10
    stockVacunas[2] <- 10
    stockVacunas[3] <- 10
    stockVacunas[4] <- 10
    stockVacunas[5] <- 10
	
	Definir agendaVacunatorio Como Caracter
    Dimension agendaVacunatorio[5,9]
    agendaVacunatorio[0, 0] <- "Lunes"
    agendaVacunatorio[0, 1] <- "8:00"
    agendaVacunatorio[0, 2] <- "8:30"
	agendaVacunatorio[0, 3] <- "-"
	agendaVacunatorio[0, 4] <- "-"
	agendaVacunatorio[0, 5] <- "-"
	agendaVacunatorio[0, 6] <- "-"
	agendaVacunatorio[0, 7] <- "-"
	agendaVacunatorio[0, 8] <- "-"
	
    agendaVacunatorio[1, 0] <- "Martes"
    agendaVacunatorio[1, 1] <- "8:00"
    agendaVacunatorio[1, 2] <- "8:30"
    agendaVacunatorio[1, 3] <- "9:00"
    agendaVacunatorio[1, 4] <- "9:30"
    agendaVacunatorio[1, 5] <- "10:00"
    agendaVacunatorio[1, 6] <- "10:30"
    agendaVacunatorio[1, 7] <- "11:00"
    agendaVacunatorio[1, 8] <- "11:30"
	
    agendaVacunatorio[2, 0] <- "Mi�rcoles"
    agendaVacunatorio[2, 1] <- "8:00"
    agendaVacunatorio[2, 2] <- "8:30"
    agendaVacunatorio[2, 3] <- "9:00"
    agendaVacunatorio[2, 4] <- "9:30"
    agendaVacunatorio[2, 5] <- "10:00"
    agendaVacunatorio[2, 6] <- "10:30"
    agendaVacunatorio[2, 7] <- "11:00"
    agendaVacunatorio[2, 8] <- "11:30"
	
	agendaVacunatorio[3, 0] <- "Jueves"
    agendaVacunatorio[3, 1] <- "8:00"
    agendaVacunatorio[3, 2] <- "8:30"
    agendaVacunatorio[3, 8] <- "11:30"
	agendaVacunatorio[3, 3] <- "-"
	agendaVacunatorio[3, 4] <- "-"
	agendaVacunatorio[3, 5] <- "-"
	agendaVacunatorio[3, 6] <- "-"
	agendaVacunatorio[3, 7] <- "-"
	
    agendaVacunatorio[4, 0] <- "Viernes"
	agendaVacunatorio[4, 1] <- "-"
	agendaVacunatorio[4, 2] <- "-"
	agendaVacunatorio[4, 3] <- "-"
	agendaVacunatorio[4, 4] <- "-"
	agendaVacunatorio[4, 5] <- "-"
	agendaVacunatorio[4, 6] <- "-"
	agendaVacunatorio[4, 7] <- "-"
	agendaVacunatorio[4, 8] <- "-"
	
	definir buscarPaciente, verAgenda como Logico
	Definir DNI, let como cadena
	Definir i, j, turnosOtorgados, Listado, reservarTurno, edad, num Como Entero
	Definir orden Como Caracter
    Definir opcionMenu Como Entero
	turnosOtorgados = 0
	opcionMenu = 3
	Dimension edad[dim]
    Escribir "Bienvenido al Sistema de Gesti�n de Turnos para el Vacunatorio - Hospital de Ni�os Dr. Victor J. Vilela"
	
	Mientras opcionMenu <> 6 Hacer
		Escribir "Men� de opciones:"
		Escribir "1. Reservar turno"
		Escribir "2. Buscar paciente"
		Escribir "3. Ver agenda del vacunatorio"
		Escribir "4. Ordenar y mostrar lista de pacientes"
		Escribir "5. Listados"
		Escribir "6. Salir"
		Escribir "Seleccione una opci�n: "
		Mientras opcionMenu < 1 o opcionMenu > 6 Hacer
			Escribir "Error: seleccione una opcion v�lida."
		FinMientras
		Leer opcionMenu
		Segun opcionMenu Hacer
			1:
				Mostrar "Reservar turno"
				dim = dim + 1
				reservarTurno = agendarTurno(agendaVacunatorio, stockVacunas, vacunas, pacientesListado, dim, turnosOtorgados)
			2:
				Escribir "Ingrese el DNI del paciente a buscar: "
				Leer DNI
				buscarPaciente = busquedaDni(DNI, pacientesListado, dim)
			3:
				Mostrar "Ver agenda del vacunatorio"
				verAgenda = mostrarAgenda(agendaVacunatorio)
			4:
				Mostrar "Ordenar y mostrar lista de pacientes"
				Escribir "   a. Por edad"
				Escribir "   b. Por Vacuna"
				leer orden
				si orden = "a" Entonces
					Para i = 0 hasta dim-1 Hacer
						let <- pacientesListado[i,3]
						edad[i] <- ConvertirANumero(let)
					FinPara
					Definir aux, posMenor Como Entero
					para i <- 0 Hasta dim-2 Con Paso 1 Hacer
						posMenor = i
						Para j = i+1 Hasta dim-1 Con Paso 1 Hacer
							si edad[j] < edad[posMenor] Entonces
								posMenor=j
							FinSi
							aux <- edad[i]
							edad[i] <- edad[posMenor]
							edad[posMenor] <- aux
						FinPara
					FinPara
					para i = 0 hasta dim-1 Hacer
						num <- edad[i]
						let <- ConvertirATexto(num)
						Para j = 0 Hasta dim-1 Hacer
							si pacientesListado[j,3] == let Entonces
								Escribir pacientesListado[j,0]
								Escribir pacientesListado[j,1]
								Escribir pacientesListado[j,2]
								Escribir pacientesListado[j,3]
								Escribir pacientesListado[j,4]
							FinSi
						FinPara
					FinPara
				FinSi
				si orden = "b" Entonces
					para i = 0 hasta 5 Hacer
						Para j = 0 Hasta dim-1 Hacer
							si pacientesListado[j,4] == vacunas[i] Entonces
								Escribir pacientesListado[j,0]
								Escribir pacientesListado[j,1]
								Escribir pacientesListado[j,2]
								Escribir pacientesListado[j,3]
								Escribir pacientesListado[j,4]
							FinSi
						FinPara
					FinPara
				FinSi
			5:
				Escribir "Listados"
				Escribir "   1. Cantidad de turnos otorgados"
				Escribir "   2. Cantidad de vacunas a aplicar por vacunas"
				Leer Listado
				segun listado hacer
					1:
						Escribir "Se otorgaron ", turnosOtorgados " turnos"
					2:
						Para i=0 Hasta 5 con paso 1 Hacer
							Escribir vacunas[i]
						FinPara
				FinSegun
		FinSegun
	fin mientras
	Escribir "Muchas gracias por utilizar el Sistema de Gesti�n de Turnos para el Vacunatorio - Hospital de Ni�os Dr. Victor�J.�Vilela"
FinProceso

Funcion buscarPaciente <- busquedaDni(DNI, pacientesListado, dim)
	Definir i Como Entero
	definir bandera Como Logico
	bandera = Falso
	Mientras i <= dim-1 Hacer
		si pacientesListado[i,2] == DNI Entonces
			Escribir "Se encontr� el paciente."
			Escribir pacientesListado[i,0]
			Escribir pacientesListado[i,1]
			Escribir pacientesListado[i,2]
			Escribir pacientesListado[i,3]
			Escribir pacientesListado[i,4]
			i = dim 
			bandera = Verdadero
		FinSi
		i = i + 1
	FinMientras
	si bandera = Falso Entonces
		Escribir "No se encontr� el paciente."
	FinSi
FinFuncion

Funcion verAgenda <- mostrarAgenda(agendaVacunatorio)
	Definir i, j, x Como Entero
	Para i <- 0 Hasta 4 Con Paso 1
		x = i +1
		Escribir "D�a: ",x, " ",agendaVacunatorio[i,0]
		Escribir "Horarios disponibles: "
		Para j <- 1 Hasta 8 Con Paso 1
			Escribir j, " ", agendaVacunatorio[i,j]
		FinPara
	FinPara
FinFuncion