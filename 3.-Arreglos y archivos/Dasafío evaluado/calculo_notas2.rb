=begin
Se pide:
*Crear un archivo llamado calculo_notas2.rb.
*Crear método llamado notas_mas_alta dentro del archivo calculo_notas2.rb que contenga solo las notas más latas de cada alumno
=end

data = open('notas.data').readlines

def notas_mas_alta(data)
    array = data.map {|x| x.split(",")}
    n = array.length
    nota_alta = []
    n.times do |i|
        array[i].map! {|x| x.to_i}
        nota_alta << array[i].max
    end
    nota_alta
end

print notas_mas_alta(data,1)
