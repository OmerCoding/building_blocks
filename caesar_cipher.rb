LET_NUM = 26

def chip (start, stop, c, shift)
  c += shift
  while c > stop
    c -= LET_NUM
  end
  return c
end

def caesar_cipher (string, shift_num)
  c_string = string
  final = ""
  for pos in 0..string.length - 1
    char = c_string[pos].ord
    if char >= 60 && char <= 90
      char = chip(65,90,char,shift_num)
    end
    if char >= 97 && char <= 122
      char = chip(97,122,char,shift_num)
    end
    char = char.chr
    final.concat(char)
  end
  return final
end

puts "Enter your string: "
s = gets.chomp

puts "Enter the requested shift: "
shift = gets.to_i

puts "Your encrypted string is: " + caesar_cipher(s, shift)
