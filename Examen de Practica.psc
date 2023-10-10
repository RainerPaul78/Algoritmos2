Algoritmo RainerPaul
	Definir nomEstudiante como caracter
	Definir carrera Como Entero
	Definir conFecha Como numero
	Definir matricula, mensualidad Como Real
	Escribir "*****-----instituto superior tecnologico jorge bonilla-----*****"
	Escribir "SISTEMAS DE PAGOS DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante : " sin saltar
	leer nomEstudiante
	
	escribir "Que carrera estudia"
	escribir "[1] = computación e informatica"
	escribir "[2] = secretariado"
	escribir "[3] = administracion"
	escribir "seleccione opcion " sin saltar
	leer carrera
	si ( carrera = 1 ) Entonces
		matricula = 300
		mensualidad = 450
	SiNo
		
	FinSi
	si  ( carrera = 2) Entonces
		matricula = 200
		mensualidad = 350
	FinSi
	si  ( carrera = 3) Entonces
		matricula = 200
		mensualidad = 350
	FinSi
	
	escribir "¿esta en el rango de fecha permitido" Sin Saltar
	Escribir  "(1) = si (0) = no" Sin Saltar
	LEER conFecha
	
	Si (conFecha = 1) Entonces
		definir concepto como entero
		escribir "el estudiante esta dentro del rango de las fechas permitidas"
		escribir "¿que concepto desea pagar"
		escribir "[1] = matricula o mensualidad"
		escribir "[2] = matricula y mensualidades"
		escribir "[3] = todo el semestre"
		escribir "[4] = toda la carrera"
		escribir "seleccione el concepto a pagar : " Sin Saltar
	FinSi
	leer concepto
	si (concepto = 1) Entonces
		Definir  opcionm Como Entero
		Escribir "elige la opcion a pagar:"
		Escribir "[1] matraicula"
		Escribir "[2] mensualidad"
		
		leer opcionm
		si opcionm = 1 Entonces
			Escribir "usted debe pagar"  matricula
			
		SiNo
			Escribir "usted debe pagar mensualidad " mensualidad " soles "
			
		FinSi
	FinSi
	si (concepto = 2) Entonces
		Definir NroMensualidades Como Entero
		Escribir  "¿cuantas mensualidades desea pagar "
		leer NroMensualidades
		si (NroMensualidades >= 2) y (NroMensualidades <= 4) Entonces
			Definir  NewMatricula, NuevaMensualidad , montoapagar Como Real
			NewMatricula=Matricula * 0.05
			NuevaMensualidad = mensualidad * 0.01
			montoapagar = (matricula - NewMatricula) + ((mensualidad - NuevaMensualidad) + NroMensualidades)
			Escribir  "usted debe pagar  " montoapagar " soles "
		FinSi
	FinSi
	si (concepto = 3) Entonces
		
		Definir  NewMatricula, NuevaMensualidad , montoapagar Como Real
		NewMatricula=Matricula * 0.10
		NuevaMensualidad = mensualidad * 0.20
		montoapagar = (matricula - NewMatricula) + ((mensualidad - NuevaMensualidad)*5)
		Escribir  "usted debe pagar " montoapagar " soles "
	Finsi
	si (concepto = 4) Entonces
		
		Definir  NewMatricula, NuevaMensualidad , montoapagar Como Real
		NewMatricula=Matricula * 0.20
		NuevaMensualidad = mensualidad * 0.40
		montoapagar = ((matricula - NewMatricula))*6 + ((mensualidad - NuevaMensualidad) *30)
		Escribir  "usted debe pagar " montoapagar " soles " 
	Finsi
FinAlgoritmo
