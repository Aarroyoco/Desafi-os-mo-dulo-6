=begin
Este script de betomar los 3 argumentos y determinar cuál es el mayor.
=end

num1 = ARGV[0].to_i # -21
num2 = ARGV[1].to_i # 9
num3 = ARGV[2].to_i # 39
#puts "#{num1} #{num2} #{num3}"
mayor = num1
if num2 > mayor
    mayor = num2
    mayor = num3 if mayor < num3
elsif num3 > mayor
    mayor = num3
end
puts mayor

