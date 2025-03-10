p "Enter string to deciper, and shifter value"

def encode(str = gets.chomp, shifter = gets.chomp.to_i.abs)

  # For some reason default paramenters doesn't work, 
  # I think the gets returns "" which is stil an object,
  # which makes default paramenters useless
  str = "A!c xYz? " if str.empty?
  shifter = 2 if shifter == ""

  str_arr = str.split(" ")

  shifted_arr = str_arr.map do |word|
     word.split("").map do |character|

      if character =~ /[\W]/
         character
      elsif character =~ /[A-Z]/
        if ((character.ord + shifter) > 90)
          (((((character.ord - 65).abs) - 25) + shifter) + 64).chr
        else
          (character.ord + shifter).chr
        end
      elsif character =~ /[a-z]/
        if ((character.ord + shifter) > 122)
          (((((character.ord - 97).abs) - 25) + shifter) + 96).chr
        else
          (character.ord + shifter).chr
        end        
      end

    end
  end

  encoded_str = shifted_arr.reduce("") do |str, word|
     str << word.join("") << " "     
  end

  x = encoded_str.split("")
  x.pop
  ciphered_str = x.join("")

  p ciphered_str

  return ciphered_str
end

encode()

=begin

encoded_str = str.split(" ").map{|word| word.split("").map{|c| (c.ord + shifter).chr}}.map{|word| word.join("")}.join(" ")

Ord should only be 65 (A) to 122 (z)
  A = 65, Z = 90  (65-90 = 35)
  a = 97, z = 122 (97-122 = 35)

Formula
  Uppercase Characters:
  ((Ord - 65) to absolute value) + 65 (**DRAFT**)

  If you have the character "Z" with the ordinal level of 90
  and a shifter value of 2, create a formula to return character "B"
  and not character 92 "\\".

  ((90 - 65) - 25) + 2 = 2 + 64
  (((ord - 65).abs) - 25) + shifter) + 64

  Lowercase Characters:

  If you have the character "z" with the ordinal level of 122
  and a shifter value of 2, create a formula to return character "b"
  and not character 124 "|".

  ((((ord - 97).abs) - 25) + shifter) + 96
=end