Proceso sin_titulo
	Definir pacientes Como Entero
    Definir pacientesListado Como Cadena
    Dimension pacientesListado[5,5]// [Nombre,Apellido, DNI, Edad, Vacuna]
	pacientesListado[0,0] <- "Gonzalo"
	pacientesListado[0,1] <- "Benitez"
	pacientesListado[0,1] <- "37345678"
	pacientesListado[0,1] <- "19"
	pacientesListado[0,1] <- "Neumococo"
	
	pacientesListado[1,0] <- "Marco"
	pacientesListado[1,1] <- "Gonzales"
	pacientesListado[1,2] <- "23456178"
	pacientesListado[1,3] <- "35"
	pacientesListado[1,4] <- "Rotavirus"
	
	pacientesListado[2,0] <- "Jorge"
	pacientesListado[2,1] <- "Martinez"
	pacientesListado[2,2] <- "28341924"
	pacientesListado[2,3] <- "27"
	pacientesListado[2,4] <- "Triple Viral"
	
	pacientesListado[3,0] <- "Santino"
	pacientesListado[3,1] <- "Castellanos"
	pacientesListado[3,2] <- "47238921"
	pacientesListado[3,3] <- "15"
	pacientesListado[3,4] <- "Poliomielitis"
	
	pacientesListado[4,0] <- "Julian"
	pacientesListado[4,1] <- "Diaz"
	pacientesListado[4,2] <- "41789283"
	pacientesListado[4,3] <- "17"
	pacientesListado[4,4] <- "Quintuple"
	
	Definir vacunas Como Cadena
	Dimension vacunas[6]
	vacunas[0] <- "Neumococo conjugada"
	vacunas[1] <- "Poliomielitis (IPV o Salk)"
	vacunas[2] <- "Quíntuple (o pentavalente)"
	vacunas[3] <- "Rotavirus"
	vacunas[4] <- "Meningococo"
	vacunas[5] <- "Tripe Viral"
	
    Definir stockVacunas Como Entero
    Dimension stockVacunas[6, 2]
    stockVacunas[0, 0] <- 10
    stockVacunas[1, 0] <- 10
    stockVacunas[2, 0] <- 10
    stockVacunas[3, 0] <- 10
    stockVacunas[4, 0] <- 10
    stockVacunas[5, 0] <- 10
	
	Definir agendaVacunatorio Como Caracter
    Dimension agendaVacunatorio[5, 9]
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
	
    agendaVacunatorio[2, 0] <- "Miércoles"
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
	
	Definir orden Como Caracter
    Definir opcionMenu Como Entero
    Definir busquedaDni Como Entero
	opcionMenu = 0
    Escribir "Bienvenido al Sistema de Gestión de Turnos para el Vacunatorio - Hospital de Niños Dr. Victor J. Vilela"
	
	Mientras opcionMenu <> 6 Hacer
		
        Escribir "Menú de opciones:"
        Escribir "1. Reservar turno"
        Escribir "2. Buscar paciente"
        Escribir "3. Ver agenda vacunatorio"
        Escribir "4. Ordenar y mostrar lista pacientes"
        Escribir "5. Listados"
        Escribir "6. Salir"
        Escribir "Seleccione una opción: "
        Leer opcionMenu
		Segun opcionMenu Hacer
			opcion1:
				Mostrar "Reservar turno"
				Mostrar agendaVacunatorio[5,9]
			opcion2:
				Escribir "Ingrese el DNI del paciente a buscar: "
				Leer busquedaDni
				Leer buscarPaciente
			opcion3:
				Mostrar "Ver agenda vacunatorio"
				Para i <- 0 Hasta 4 Con Paso 1
					Escribir "Día: ", agendaVacunatorio[i,0]
					Escribir "Horarios disponibles: "
					Para j <- 0 Hasta 8 Con Paso 1
						Escribir agendaVacunatorio[i,j]
					FinPara
				FinPara
			opcion4:
				Mostrar "Ordenar y mostrar lista pacientes"
				Escribir "   a. Por edad"
				Escribir "   b. Por Vacuna"
				leer orden
				si orden = "a" Entonces
					//orden(edad)
					si orden = "b" Entonces
						
						//orden(vacuna)
					FinSi
				FinSi
				
				
		FinSegun
	fin mientras
FinProceso