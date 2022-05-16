=begin
    Se pide:
    *Crear un archivo llamado calculo_notas.rb que reciba un arreglo con el nombre y notas del alumno, y devuelva la nota más alta
=end
    
data =open('notas.data').readlines

def nota_mas_alta(data,linea)
    array = data.map {|x| x.split(",")}
    nota_alta = 0
    array[linea].map! {|x| x.to_i}
    nota_alta =array[linea].max
    nota_alta
end

print nota_mas_alta(data,1) #el segundo argumento identifica la línea del alumno en el archivo notas.data
