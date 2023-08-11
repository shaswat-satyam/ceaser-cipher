def ceaser_cipher(string, shift)
    shift %= 26
    chars = string.split('')
    i = 0
    for c in chars do
        code = c.ord
        if 64 < code && code < 91
            code += shift
            if code > 90
                code = ((code - 65) % 26) + 65
            end
        elsif 96 < code && code < 123
            code += shift
            if code > 122
                code = ((code - 95) % 26)+65
            end
        end
        
        chars[i] = code.chr
        i += 1
    end
    return chars.join()

end

puts ceaser_cipher("Hello Psycho!",5)