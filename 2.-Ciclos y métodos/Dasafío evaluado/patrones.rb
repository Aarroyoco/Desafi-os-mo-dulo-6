=begin
Escribir un programa llamado patrones.rb con métodos que reciban la cantidad de líneas y
muestren por pantalla los siguientes patrones de *:   
=end


# LETRA O
# n = 5
# Parte superior
def techo(cantidad_techo)
    cantidad_techo.times do |i|
        print "*"
    end
    print "\n"
end

# paredes mas espacios vacios
def medio(n)
    (n - 2).times do |x|
        print "*"
        (n - 2).times do |i|
            print " "
        end
        print "*"
        print "\n"
    end
end

# Parte inferior
def inferior(cantidad_inferior)
    cantidad_inferior.times do |i|
        print "*"
    end
    print "\n"
end

def start(cantidad)
    techo(cantidad)
    medio(cantidad)
    inferior(cantidad)
end

n = ARGV[0].to_i
start(n)

# LETRA I

def creando_i(n)
    fin = (n-1)
    centro = (n/2)
    n.times do |fila|
        if fila == 0 || fila == (fin)
            n.times do |linea|
                print "*"
            end
            print"\n"
        else
            (n-2).times do |x|
                if x == (centro)
                    print "*"
                else
                    print " "
                end
            end
            print "\n"
        end
    end
end
n =creando_i(ARGV[0].to_i)

# LETRA Z

def creando_z(n)
    fin = (n-1)
    inverso = (n-2)
    n.times do |fila|
        if fila == 0 || fila == (fin)
            n.times do |linea|
                print "*"
            end
            print "\n"
        else
            n.times do |x|
                if x == inverso
                    print "*"
                else
                    print " "
                end
            end
            inverso = inverso -1
            print "\n"
        end
    end
end
n =creando_z(ARGV[0].to_i)

# LETRA X

def creando_x(n)
    n.times do |i|
        n.times do |j|
            if i == j || (i + j) == (n-1)
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
    print "\n"
end
n =creando_x(ARGV[0].to_i)    

# Número 0

# Parte superior
def numero_0(n_veces)
    n_veces.times do |i|
        n_veces.times do |j|
            if i == 0 || j == 0 || i == j || j == n_veces-1 || i == n_veces-1
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
end

n =numero_0(ARGV[0].to_i)

# ARBOLITO

def arbolito_copa(n)
    c = "* "
    value = c
    for i in 1..n
        puts " " * (n - i) + value
        value += c * (2 - 1)
    end
end

def arbolito_tronco(n)  
    (n - 1).times do |i|
        n.times do |j|
            if j == ((2*n - 1) / 2)
                print "*"
            else 
                print " "
            end
        end   
        print "\n" 
    end
end

def arbolito_base(n)
    n = n-1
    print " "
    (n*2 - 1).times do |i|
        if i.even?
            print "*"
        else 
            print " "
        end
    end
    print "\n" 
end

n =arbolito_copa(ARGV[0].to_i)
n =arbolito_tronco(ARGV[0].to_i)
n =arbolito_base(ARGV[0].to_i)
