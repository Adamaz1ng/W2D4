 require 'byebug'
 
 def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
 end
 
 # O(n!) time complexity
 def first_anagram?(str, word)
  num = factorial(str.length)
  arr = []
  
  while num > 0
    test = str.split("").shuffle.join
    if !(arr.include?(test))
      arr.push(test)
      num -= 1
    end
  end
  arr.include?(word)
 end
  
# O(n^2) time complexity  
 def second_anagram?(str, word)
   letters = str.chars
   letters.each do |ch|
     if word.include?(ch)
       str = str.sub(ch, "")
       word = word.sub(ch, "")
     end
   end
   str.empty? && word.empty?
 end
 
 # O(n * log n) time complexity
 def third_anagram?(str, word)
   str.chars.sort == word.chars.sort
 end
 
 # O(n) time complexity
 def fourth_anagram?(str, word)
  first = Hash.new(0)
  second = Hash.new(0)
  
  str.chars.each do |ch|
    first[ch] += 1
  end
  
  word.chars.each do |ch|
    second[ch] += 1
  end
  
  first.all? { |k, v| second[k] ==  v }
 end