Algoritmo SueldoNeto
	Definir Horas, Tasa, SueldoNet, Tarifa, SueldoBruto Como Real
	Escribir "Ingresar Total De Horas Trabajadas: "
	Leer Horas
	Escribir "Ingresar La Tarifa: "
	Leer Tarifa
	SueldoBruto = Horas*Tarifa
	Impuestos = SueldoBruto*0.8
	SueldoNet = SueldoBruto - Impuestos
	Escribir "Tus Horas de Trabajo Son: " Horas
	Escribir "Tu Tarifa Por Tu Trabajo Es: " Tarifa
	Escribir "Tu Sueldo Bruto Es: " SueldoBruto
	Escribir "Tus Impuestos Son: " Impuestos
	Escribir "=========================="
	Escribir "Tu Sueldo Neto Es: " SueldoNet
FinAlgoritmo
