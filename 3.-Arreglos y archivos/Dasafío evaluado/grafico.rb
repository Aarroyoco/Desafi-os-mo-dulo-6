=begin
    

=end









def barra(n)
    print("|")
    n.times do
        print "*" * 2 
    end
    puts" "
end

def chart(array)
    array.each do |e|
        barra(e)
    end
    maximo = array.max
    print "#{">"}#{"-" * maximo * 2}#{"\n"}#{"> "}
    for i in 1.maximo
        print "#{i} "
    end
end

chart([5, 3, 2, 5, 8, 10])





