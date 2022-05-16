# Si el cuarto argumento es omitido sólo se debe calcular el mayor de 3.

num1 = ARGV[0].to_i #10
num2 = ARGV[1].to_i #5
num3 = ARGV[2].to_i #3
num4 = ARGV[3].to_i #12
#puts "#{num1}" "#{num2}" "#{num3}" "#{num4}"
puts num4
puts num4[3].nil?
if ARGV[3].nil?
    # Evaluar el mayor de 3
    mayor = num1
    if num2 > mayor
        mayor = num2
        mayor = num3 if mayor < num3    
    elsif num3 > mayor
        mayor = num4
    end
    puts mayor
else
    # Evaluar el mayor 4
    puts "Se evaluará el mayor de 4 números"
end