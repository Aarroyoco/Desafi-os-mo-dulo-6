=begin
puts "Ingrese el precio de Venta"
precio_venta = gets.to_f
puts "Ingrese cantidad de usuarios"
usuarios = gets.to_i
puts "Ingrese los Gastos"
gastos = gets.to_i
utilidades = (precio_venta*usuarios)-gastos
if utilidades > 0
    utilidades = utilidades - (utilidades*0.35)
    puts "Las utilidades son #{utilidades}"
else
    puts "Las utilidades son #{utilidades}"
end

