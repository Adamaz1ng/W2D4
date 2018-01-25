list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# time complexity: O(n^2)

def my_min(arr)
  min_val = arr.first
  arr.each_with_index do |el, i|
    arr.each_with_index do |el2, j|
      next if i == j
        if el2 < el && el2 < min_val
          min_val = el2
        end
    end  
  end
  min_val
end


# time complexity? O(n)
def my_min_two(arr)
  min_val = arr.first
  
  arr[1..-1].each do |el|
    min_val = el if el < min_val
  end
  
  min_val
end

#time complexity? O(n^2)
def lcs(arr)
  sum = 0
  
  arr.each_with_index do |el, i|
    j = i
    while j < arr.length
      res = arr[i..j].reduce(:+)
      sum = res if res > sum
       
      j += 1
    end
  end 
  
  sum      
end

# O(n) time wuth O(1) memory ???????????
def lcs_two(arr)
  current = arr.first
  max = arr.first
  arr[1...arr.length].each do |el|
    current = 0 if current < 0
    current += el
    max = current if current > max
  end
  max
end

