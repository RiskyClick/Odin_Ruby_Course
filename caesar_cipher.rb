def greetings()
    puts("Hey hows it going.")
    puts("Would you like to decript or encript a message?")
    puts("Enter 'E' for encript, or 'D' for decript")
    choise = gets.chomp
    while choise != "E" or choise != "D"
        puts("Not valid, enter 'E' for encript, or 'D' for decript")
        choise = gets.chomp
        p choise
    end
    return choise
end

def get_sentence(enorde)
    enorde == 'E' ? puts("Enter the message you would like to encript") : puts("Enter the message you would like to decript")
    return sentence = gets.chomp
end

def get_shift()
    puts("Enter a number to shift by")
    shift = gets.chomp
    while not to_i.is_a? Numeric
        puts("That is not a number, try again.")
        shift.gets.chomp
    end
    return shift
end

def caesar_cipher(sentence, shift)
    sentence = sentence.split("")
    scrambled = sentence.map{|c| (c.ord + shift.to_i).chr}
    return scrambled.join("")

end

enorde = greetings()
sentence = get_sentence(enorde)
shift = get_shift()
scrambled = caesar_cipher(sentence, shift)

puts("Here is your scrambled eggs: ")
puts(scrambled)