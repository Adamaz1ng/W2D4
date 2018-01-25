require 'byebug'

# time complexity: O(n^2)

def bad_two_sum(arr, target)
  arr.each_index do |i|
    arr.each_index do |j|
      next if i == j
      return true if arr[i] + arr[j] == target
    end
  end
  false
end

# time complexity: O(n * log(n))
def okay_two_sum(arr, target)
  sorted = arr.sort
  sorted.each do |el|
    diff = target - el
    v = sorted.bsearch { |x| x == diff }
    return true unless v.nil?
  end
  
  false
end


# time complexity: O(n)
def hash_two_sum(arr, target)
  hsh = Hash.new
  
  arr.each do |el|
    key = target - el
    if hsh[key]
      return true
    else
      hsh[el] = true
    end
  end  
  false
end
