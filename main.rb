def caesar_cipher(word, number)
    abecedario = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    word_up = word.upcase
    new_word = []

    for i in 0...word_up.length
        char = word_up[i]
        if abecedario.include?(char)
            nuevo_indice = (abecedario.index(char) + number.to_i) % abecedario.length
            new_word.push(abecedario[nuevo_indice])
        end
    end
    return new_word.join
end

def verify_string(word1)
    if word1.match?(/\A[a-zA-Z]+\z/)
        return word1
    else
        return nil
    end
end

def verify_number(number1)
    if number1.match?(/\A\d+\z/)
        return number1.to_i
    else
        return nil
    end
end

puts "Ingresa una palabra"
word = gets.chomp
result_string = verify_string(word)

if result_string.nil?
    puts "La palabra debe tener solo letras"
else
    puts "Ingresa un número"
    number = gets.chomp
    result_number = verify_number(number)

    if result_number.nil?
        puts "Escribir solo numeros"
    else
        result = caesar_cipher(result_string, result_number)
        puts result
    end
end
