=begin
Se pide

=end

data = open("ventas_base.db").read 

ventas.map! {|x| x.to_i}

def proyección_ventas(ventas, porcentajes, indice_inicial, indice_final)
    suma_intervalo = 0
    indice_inicial -= 1
    until inidce_inicial == indice_final
        suma_intervalo = suma_intervalo + ventas[indice_inicial]
        indice_inicial +=1
    end
    suma_intervalo = (suma_intervalo + suma_intervalo.to_f * porcentaje/100)
    File.open("resultados.data", "a").write“suma_intervalo.to_s + "\n")
    return suma_intervalo
end

proyección_uno = proyección_ventasventas, 10, 1, 6)
proyección_dos = proyección_ventas(ventas, 20, 7, 12)

puts "La proyección del rango seleccionado es: #{"$"} #{proyeccion_uno.to_s.insert(3,",")}"
puts "La proyección del rango seleccionado es: #{"$"} #{proyeccion_dos.to_s.insert(3,",")}"
