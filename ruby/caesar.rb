def caesar_cipher(string, shift)
  string.chars.map do |char| 
    ascii = char.ord
    if ascii.between?(65, 90) || ascii.between?(97, 122) then 
      ascii_shift = ascii <= 90 ? 65 : 97
      retval = (ascii - ascii_shift + shift) % 26 + ascii_shift
    else 
      retval = ascii
    end
    retval.chr
  end.join() 
end

puts(caesar_cipher("What a string!", 5))