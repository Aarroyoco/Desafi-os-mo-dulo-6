ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
    }
    
    trimestre = ['Q1','Q2','Q3','Q4']
    ventas_nuevas = ventas.values.each_slice(3).to_a
    n = ventas_nuevas.length
    ventas_finales = []
    n.times do |i|
        if i >= 0
        ventas_finales.push ventas_nuevas[i].sum
        end
    end
    cuatrimestre = trimestre.zip(ventas_finales).to_h
    
    puts cuatrimestre