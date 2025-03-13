require 'pry-byebug'
number_arr = [50, 34, 23, 54, 12, 9, 4, 1, 60, 0]

def bubble_sort(numbers)
  bubbled_arr = numbers
  
  numbers.each_with_index do |n, i|
    if (i == (numbers.length - 1))
      bubbled_arr[i] = bubbled_arr[i]
    elsif numbers[i] > numbers[i + 1]
      x = numbers[i]

      bubbled_arr[i] = bubbled_arr[i + 1]
      bubbled_arr[i + 1] = x
    elsif numbers[i] < numbers[i + 1]
      bubbled_arr[i] = n
    end
  end

  bubble_sort(bubbled_arr) unless numbers == numbers.sort
  return bubbled_arr if bubbled_arr == numbers.sort
end

p "Sorted: #{bubble_sort(number_arr)}"