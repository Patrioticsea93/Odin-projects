def caesar_cipher(string, shift)
  string.chars.map do |char|
    case char
    when "a".."z"
      ((char.ord - "a".ord + shift) % 26 + "a".ord).chr
    when "A".."Z"
      ((char.ord - "A".ord + shift) % 26 + "A".ord).chr
    else
      char
    end
  end.join
end

if __FILE__ == $PROGRAM_NAME
  print "Enter text: "
  text = gets.chomp

  print "Enter shift factor: "
  shift = gets.chomp.to_i

  puts caesar_cipher(text, shift)
end
