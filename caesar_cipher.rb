def caesar_cipher (string, shift_num)
  @c_string = string
  @final = ""
  for pos in 0..string.length - 1
    @char = @c_string[pos].ord

    if @char >= 65 && @char <= 90
      @char += shift_num
      if @char > 90
        while @char > 90 do
          @char -= 26
        end
      end
    end
    if @char >= 97 && @char <= 122
      @char += shift_num
      if @char > 122
        while @char > 122 do
          @char -= 26
        end
      end
    end
    @char = @char.chr
    @final.concat(@char)
  end
  return @final
end

puts caesar_cipher("Hello!5", 200)
