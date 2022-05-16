=begin
Escribir un programa llamado números.rb que reciba por línea de comandos la cantidad de
líneas, y dibuje el siguiente patrón:
=end

def numeros(cantidad)
    fila = 0
    string = ""
    while fila < cantidad
        string += fila.to_s.next
        puts "#{string}"
        fila += 1
    end
end

numeros (ARGV[0].to_i)