p ("Enter String to cipher")
str = gets.chomp
p ("Enter Shifter value")
shifter = gets.chomp.to_i.abs

def encode(str = "Caesar Cipher!", shifter = 3)
  encoded_str = str.split(" ").map{|word| word.split("").map{|c| (c.ord + shifter).chr}}.map{|word| word.join("")}.join(" ")
end


p encode

