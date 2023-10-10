Algoritmo sin_titulo
	Definir NomEstudiante Como Caracter
	Definir ConFecha Como Numero
	Definir Carrera Como Entero
	Definir Rango Como Logico
	Definir Matricula, Mensualidad Como Entero
	
	Escribir "**** ---- Universidad Nacional Amazonica de Madre de Dios---- ****"
	Escribir "SISTEMAS DE PAGO DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NumEstudiante
	
	Escribir "¿Que carrera estudia?"
	Escribir "[1] Computacion e Informatica"
	Escribir "[2] Secretariado Ejecutivo"
	Escribir "[3] Administracion"
	Escribir "Selecione la Opcion: " Sin Saltar
	Leer Carrera
	si (Carrera = 1) Entonces
		Matricula = 300
		Mensualidd = 450
	FinSi
	
	si (Carrera = 2) Entonces
		Matricula = 200
		Mensualidad = 350
	FinSi
	si (carrera = 3) Entonces
		Matricula = 250
		Mensualidad = 400
	FinSi
	
	Escribir "¿Esta en el rango de fecha permitido?" Sin Saltar
	Escribir "(1) = SI y (2) = NO" Sin Saltar
	Leer ConFecha
	Si (ConFecha = 1) Entonces
		Definir Concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fecha permitida"
		Escribir "¿Que concepto desea pagar?"
		Escribir "[1] Matricula o Mensualidades"
		Escribir "[2] Matricula y Mensualidad"
		Escribir "[3] Todo el semestre"
		Escribir "[4] Toda la carrera"
		Escribir "Selecione el concepto a pagar: " Sin Saltar
		Leer Concepto
		
		si (Concepto = 1) Entonces
			//Condicion 1: Pago de matricula o mensualidad no hay descuento
			Definir OpcionMM como Entero
			Escribir "Elige la opcion a pagar: "
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer OpcionMM
			si OpcionMM = 1 Entonces
				Escribir "Usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			FinSi
	    SiNo
			Escribir "No se puede realizar la operacion" 
			
		FinSi
		si (Concepto = 2) Entonces
			//Condicion 2: Pago de Matricula + 2 hasta 4 mensualidades 5% de descuento en la matricula y el 10% en las pensiones
			Definir NroMensualidades Como Entero
			Escribir "¿Cuantas mensualidades desea pagar?"
			Leer NroMensualidades
			si (NroMensualidades >= 2) Y (NroMensualidades <= 4) Entonces
				Definir  NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula - NueMatricula) + ((Mensualidad - NueMensualidad) * NroMensualidades)
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "88888No se puede realizar la operacion" 
			FinSi
			
			
			
		SiNo
			Escribir "No se puede realizar la operacion"
		FinSi
		//Condición 3: Todo un semestre + matrícula; descuento del 20% al monto total de pensiones y el 10% a la matricula.
		//Condición 4: Toda la carrera descuento del 40% al monto total de pensiones y el 20% a las matrículas.
	SiNo
		Escribir "El estufdiante esta  fuera del rango de las fechas permitidas"
		// si no esta dentro del rango
		//de las fechas de matricula y pago de pensiones (cuotas),
		//el sistema le genera el 1% de Multa por retraso a la Mensualidd
		//de lo contrario se le pueden aplicar las siguientes condiciones:
		Definir Multa Como Real
		Multa = mensualidad * 0.1
		Multa = mensualidad * Multa
		Escribir "La nueva mensualidad es: " mensualidad
		
	FinSi
	
FinAlgoritmo
