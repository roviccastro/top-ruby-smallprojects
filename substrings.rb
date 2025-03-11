p "Substrings Project"
p "Enter Phrase to find in dictionary:"

dictionary = %w(hello hi hey wassup wsp girl boy man woman gyatt rizz rizzler ohio skibidi sigma gronk john pork lol lmao rofl ily i am im love you u right left top down bottom up)
phrase = gets.chomp.downcase

def get_substrings(phrase, reference)
  phrase_arr = phrase.downcase.split(" ")
  reference_arr = reference.join(" ").downcase.split(" ")
  
  phrase_arr.reduce(Hash.new(0)) do |total, word|
    reference_arr.each {|a| word == a ? total[word] += 1 : total}

    total
  end
  
end

p (get_substrings(phrase, dictionary))