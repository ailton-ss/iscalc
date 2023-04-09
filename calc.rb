puts "Calculadora"

def split(operation, symbol)
    operation.split(symbol)
end

stop = false
while !stop
    puts "Digite a operação, exp: 2+2"
    operation = gets.chomp

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
    #stop = true
end