# require 'pry-byebug'
def caesar_cipher(user_input, shift)
  # binding.pry 
  p "Original user input: #{user_input}"
  changed_array = user_input.chars.map {|letter| letter = value_check(letter, shift)} 
  p changed_array.join
end
def value_check(letter, shift)
  shifted = (letter.ord + shift)
  if letter.match?(/[A-Z]/)
    if shifted < 65
      shifted = 90 - (64 - shifted)
    elsif shifted > 90
      shifted = 65 + (shifted - 91)
    end 
    return shifted.chr
  elsif letter.match?(/[a-z]/)
    if shifted < 97
      shifted = 122 - (96 - shifted)
    elsif shifted > 122
      shifted = 97 + (shifted - 123)
    end 
    return shifted.chr
  else
    letter
  end
end
caesar_cipher("What a string", 5)
caesar_cipher("AbCdEfgHiJklmnopqrstuvwxyz", -1) 
caesar_cipher("abcd ABCD?!", 25) 
caesar_cipher("abcd ABCD?!", 26) 
caesar_cipher("abcd ABCD?!", -26) 


