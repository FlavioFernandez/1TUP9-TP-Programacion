Proceso VACUNATORIO
    Definir pacientes Como Entero
    Definir pacientesListado Como Cadena
    Dimension pacientesListado[5,4] // [Nombre, DNI, Edad, Vacuna]
	Definir vacunas Como Cadena
	Dimension vacunas[6]
	vacunas[1] <- "Neumococo conjugada"
	vacunas[2] <- "Poliomielitis (IPV o Salk)"
	vacunas[3] <- "Quíntuple (o pentavalente)"
	vacunas[4] <- "Rotavirus"
	vacunas[5] <- "Meningococo"
	vacunas[6] <- "Tripe Viral"
    Definir stockVacunas Como Entero
    Dimension stockVacunas[6, 2]
    stockVacunas[1, 1] <- 10
    stockVacunas[2, 1] <- 10
    stockVacunas[3, 1] <- 10
    stockVacunas[4, 1] <- 10
    stockVacunas[5, 1] <- 10
    stockVacunas[6, 1] <- 10
	Definir agendaVacunatorio Como Caracter
    Dimension agendaVacunatorio[5, 9]
    agendaVacunatorio[1, 1] <- "Lunes"
    agendaVacunatorio[1, 2] <- "8:00"
    agendaVacunatorio[1, 3] <- "8:30"
	
    agendaVacunatorio[2, 1] <- "Martes"
    agendaVacunatorio[2, 2] <- "8:00"
    agendaVacunatorio[2, 3] <- "8:30"
    agendaVacunatorio[2, 4] <- "9:00"
    agendaVacunatorio[2, 5] <- "9:30"
    agendaVacunatorio[2, 6] <- "10:00"
    agendaVacunatorio[2, 7] <- "10:30"
    agendaVacunatorio[2, 8] <- "11:00"
    agendaVacunatorio[2, 9] <- "11:30"
	
    agendaVacunatorio[3, 1] <- "Miércoles"
    agendaVacunatorio[3, 2] <- "8:00"
    agendaVacunatorio[3, 3] <- "8:30"
    agendaVacunatorio[3, 4] <- "9:00"
    agendaVacunatorio[3, 5] <- "9:30"
    agendaVacunatorio[3, 6] <- "10:00"
    agendaVacunatorio[3, 7] <- "10:30"
    agendaVacunatorio[3, 8] <- "11:00"
    agendaVacunatorio[3, 9] <- "11:30"
	
    agendaVacunatorio[4, 1] <- "Jueves"
    agendaVacunatorio[4, 2] <- "8:00"
    agendaVacunatorio[4, 3] <- "8:30"
    agendaVacunatorio[4, 9] <- "11:30"
	
    agendaVacunatorio[5, 1] <- "Viernes"
	
    Definir opcionMenu Como Entero
    Definir busquedaDni Como Entero
	
    Escribir "Bienvenido al Sistema de Gestión de Turnos para el Vacunatorio - Hospital de Niños Dr. Victor J. Vilela"
	
    Repetir
        Escribir "Menú de opciones:"
        Escribir "1. Reservar turno"
        Escribir "2. Buscar paciente"
        Escribir "3. Ver agenda vacunatorio"
        Escribir "4. Ordenar y mostrar lista pacientes"
        Escribir "5. Listados"
        Escribir "6. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
        Si opcion = 1 Entonces
            Mostrar "Reservar turno"
            Mostrar [agendaVacunatorio]
        Sino Si opcion = 2 Entonces
				Escribir "Ingrese el DNI del paciente a buscar: "
				Leer busquedaDni
				Mostrar "Buscar paciente"
				Mostrar [pacientesListado]
			Sino Si opcion = 3 Entonces
					Mostrar "Ver agenda vacunatorio"
					Para i <- 1 Hasta 5
						Escribir "Día: ", agendaVacunatorio[i, 1]
						Escribir "Horarios disponibles: "
						Para j <- 2 Hasta 9
							Si agendaVacunatorio[i, j] <> "" Entonces
								Si j - 1 <= 5
									Escribir " - ", agendaVacunatorio[i, j]
								FinSi
							FinSi
						FinPara
					FinPara
				Sino Si opcion = 4 Entonces
						Mostrar "Ordenar y mostrar lista pacientes"
						Mostrar pacientesListado
					Sino Si opcion = 5 Entonces
							Mostrar "Listados"
							Mostrar pacientesListado
						Sino Si opcion = 6 Entonces
								Escribir "Muchas gracias por utilizar el Sistema de Gestión del Vacunatorio - Hospital de Niños Dr. Victor J. Vilela"
				FinSi				
			FinSi
			Hasta Que opcionMenu = 6
FinProceso
