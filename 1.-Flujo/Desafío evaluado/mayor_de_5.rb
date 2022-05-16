num1 = ARGV[0].to_i
num2 = ARGV[1].to_i
num3 = ARGV[2].to_i
num4 = ARGV[3].to_i

if num1 >= num2 && num1 >= num3 && num1 >= num4
    puts "El número mayor es #{num1}"
    elsif num2 >= num1 && num2 >= num3 && num2 >= num4
        puts "El número mayor es #{num2}"
    elsif num3 >= num1 && num3 >= num2 && num3 >= num4
        puts "El número mayor es #{num3}"
    else
        puts "El número mayor es #{num4}"
end
