def read_file
	file = File.open('alumnos.csv', 'r')
	alumnos = file.readlines.map(&:chomp).map { |e| e.split(", ")  }
	file.close
	return alumnos	
end

def add_file
	alumnos =  read_file
	alumnos.each do |alumno| 
		nombre_alumno = alumno.shift
		promedio = 1
     File.open("average.txt", "a") { |ele|
     	ele.puts "El alumno #{nombre_alumno} tiene un promedio #{promedio}"
     }

	end

end

puts "Ingrese su número de opción"
puts "1 - Quiere generar un archivo con las notas de los alumnos"
puts "2 - Desea ver las inasistencias totales en pantalla"
puts "3 - Estos son los alumnos aprobados"
puts "4 - Cerrar el programa"

opcion = gets.chomp.to_i

while opcion != 4
	case opcion
	when 1
		add_file


break
	when 2
		

		#puts "Inasistencias: "
		#puts "#{x} tiene  #{y} inasistencias"
		

	when 3
		
		file = File.open('promedio.csv', 'r')
		alumnos = file.readlines
		file.close

		alumnos.each do |nota|
			data = nota.split(', ').map(&:chomp)
		end
		print data if data[1] >= "5"

		
	when 4
		puts "el programa se cerrará"
		break;
	else 
		puts "#{opcion} no es una opción válida"
		puts "Ingrese su número de opción"
		puts "1 - Quiere generar un archivo con las notas de los alumnos"
		puts "2 - Desea ver las inasistencias totales en pantalla"
		puts "3 - Estos son los alumnos aprobados"
		puts "4 - Cerrar el programa"
		opcion = gets.chomp.to_i
	end
end

