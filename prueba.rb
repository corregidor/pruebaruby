continuar = true

while continuar
  puts 'Ingresa una de las siguientes opciones: '
  puts '[1] Promedio de los alumnos'
  puts '[2] Inasistencias totales del curso'
  puts '[3] Mostrar alumnos aprobados'
  puts '[4] Cerrar programa'
  opcion = gets.chomp.to_i





    if opcion == 1
      #ACÁ TENGO QUE ENTREGAR EL NOMBRE DEL ALUMNO Y SU PROMEDIO DE NOTAS
       file = File.open('datos.txt', 'r')
       data = file.readlines
       file.close


        arreglo_final = []
        data.each do |line|
        arreglo = line.split(", ")

         alumno = arreglo[0]
         suma_de_notas = arreglo[1].to_i + arreglo[2].to_i + arreglo[3].to_i + arreglo[4].to_i + arreglo[5].to_i

         promedio_por_alumno = suma_de_notas/(arreglo.length-1).to_f

         arreglo_final.push([alumno, promedio_por_alumno])
      end

      print arreglo_final
      file = File.open('promedios.txt', 'w')
      arreglo_final.each do |alumno_con_su_promedio|
        file.puts "#{alumno_con_su_promedio.first}, #{alumno_con_su_promedio.last}"
      end
      file.close
    end



    if opcion == 2
      file = File.open('datos.txt', 'r')
      data = file.readlines
      file.close

      count = 0
      arreglo_con_notas = []
      data.each do |line|
      arreglo_con_notas += line.split(", ")
          arreglo_con_notas.each do |nota|
            if nota == "A"
              count += 1
            end
          end
      end
      puts "La cantidad de Inasistencias del curso es #{count -1}"
    end






    if opcion == 3
      #ACÁ TENGO QUE PROMEDIAR LAS NOTAS DE LOS ALUMNOS Y
   #MOSTRAR "APROBADO" SI EL PROMEDIO DE SUS NOTAS ES > A 5
   #DE LO CONTRARIO MOSTRAR "REPROBADO"
   file = File.open('datos.txt', 'r')
   data = file.readlines
   file.close
   print data
   puts "no pude"

    end

    if opcion == 4
      #ACÁ SALGO DEL PROGRAMA
       exit()
    end



end
