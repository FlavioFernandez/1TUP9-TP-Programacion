Proceso VACUNATORIO
    Definir pacientes, nombreYApellido, dni, vacuna Como Cadena
	Definir edad Como Real
	Definir pacientesListado como Caracter
	 Dimension pacientesListado[100]
    Definir agendaVacunatorio Como Caracter
	 Dimension agendaVacunatorio[5, 8]
    Definir stockVacunas Como Entero
		Dimension stockVacunas[6, 2]
		stockVacunas[1, 1] <- 10
		stockVacunas[2, 1] <- 10
		stockVacunas[3, 1] <- 10
		stockVacunas[4, 1] <- 10
		stockVacunas[5, 1] <- 10
		stockVacunas[6, 1] <- 10
		
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
		
    Definir opcion Como Cadena
    Definir busquedaDni Como Cadena
	Definir pacientesListado Como Cadena
		
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
			Si opcion = "1" Entonces
				Mostrar agendaVacunatorio[7]
				Mostrar pacientesListado, agendaVacunatorio, stockVacunas
			Sino Si opcion = "2" Entonces
					Escribir "Ingrese el DNI del paciente a buscar: "
					Leer dniBusqueda
					Mostrar pacientesListado, busquedaDni
				Sino Si opcion = "3" Entonces
						Mostrar agendaVacunatorio, pacientesListado
					Sino Si opcion = "4" Entonces
							Mostrar pacientesListado
						Sino Si opcion = "5" Entonces
								Mostrar pacientesListado
							FinSi
						Hasta Que opcion = "6" Opcion = "salir"
						
						Escribir "Muchas gracias por utilizar el Sistema de Gestión del Vacunatorio - Hospital de Niños Dr. Victor J. Vilela"Subproceso 
							Definir agenda Como Cadena
							Definir stockVacunas Como Entero
								Para i <- 1 Hasta 5
									Escribir "Turnos disponibles ", agenda[i, 1], ":"
									Para j <- 2 Hasta 9
										Si agenda[i, j] <> "" Entonces
											Escribir j - 1, ". ", agenda[i, j]
											Si stockVacunas[j - 1, 1] = 0 Entonces
												Escribir "Sin stock"
											FinSi
										FinSi
									FinPara
								FinPara
								FinSubproceso
FinProceso
