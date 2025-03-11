p "Substrings Project"
p "Enter Phrase to find in dictionary:"

dictionary = %w(Hello hi hey beautiful gorgeous majestic pretty wonderful is are you me i am im lol lmao rofl skibidy sigma toilet rizz odin project sit stand up down right left top bottom side step jump)
phrase = gets.chomp

def get_substrings(phrase, reference)
  phrase_arr = phrase.downcase.split(" ")
  reference_arr = reference.join(" ").downcase.split(" ")
  
  phrase_arr.reduce(Hash.new(0)) do |total, word|
    reference_arr.each {|a| word == a ? total[word] += 1 : total}

    total
  end
  
end

p (get_substrings(phrase, dictionary))