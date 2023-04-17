puts "#Calculadora"
puts "Para finalizar digite: q"
puts "----------------------------------"

def split(operation, symbol)
    operation.split(symbol)
end

def sum(value1, value2)
    value1.to_i + value2.to_i
end

stop = false
while !stop
    puts "Digite a operação, exp: 2+2"
    puts "Para porcentagem use %, exp: 2+2%"
    operation = gets.chomp
    
    if operation == "q"
        puts "saindo..."
        stop = true
        return
    end

    if operation.include? '+'
        operation = split(operation, "+")
        percentValue = 0
        if operation[1].include? '%'
            value = split(operation[1], "%")
            if value.length > 0
                percentValue = value[0]
            end
        end
        if percentValue != 0
            result = ((operation[0].to_f * percentValue.to_f) / 100) + operation[0].to_f
        else
            result = sum(operation[0], operation[1])
        end
    elsif operation.include? "-"
        operation = split(operation, "-")
        percentValue = 0
        if operation[1].include? '%'
            value = split(operation[1], "%")
            if value.length > 0
                percentValue = value[0]
            end
        end
        if percentValue != 0
            result = operation[0].to_f - ((operation[0].to_f * percentValue.to_f) / 100)
        else
           result = operation[0].to_i - operation[1].to_i
        end
    elsif operation.include? "*"
        operation = split(operation, "*")
        percentValue = 0
        if operation[1].include? '%'
            value = split(operation[1], "%")
            if value.length > 0
                percentValue = value[0]
            end
        end
        if percentValue != 0
            result = ((operation[0].to_f * percentValue.to_f) / 100)
        else
           result = operation[0].to_i * operation[1].to_i
        end
    elsif operation.include? "/"
        operation = split(operation, "/")
        result = operation[0].to_i / operation[1].to_i
    else 
        puts "algo errado..."
    end

    puts "Result: #{result}"
    puts "---------------------------"
end