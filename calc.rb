puts "#Calculadora"
puts "Para finalizar digite: q"

def split(operation, symbol)
    operation.split(symbol)
end

stop = false
while !stop
    puts "Digite a operação, exp: 2+2"
    operation = gets.chomp
    
    if operation == "q"
        puts "saindo..."
        stop = true
        return
    end

    result = 0
        
    if operation.include? '+'
        operation = split(operation, "+")
        result = operation[0].to_i + operation[1].to_i
    elsif operation.include? "-"
        operation = split(operation, "-")
        result = operation[0].to_i - operation[1].to_i
    elsif operation.include? "*"
        operation = split(operation, "*")
        result = operation[0].to_i * operation[1].to_i
    elsif operation.include? "/"
        operation = split(operation, "/")
        result = operation[0].to_i / operation[1].to_i
    else 
        puts "algo errado..."
    end

    puts "Result: #{result}"
    puts "---------------------------"
end