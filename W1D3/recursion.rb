def sum_to(n)
  return 1 if n <= 1
  n + sum_to(n-1)
end

def add_numbers(arr)
  return 0 if arr.empty?
  arr.shift + add_numbers(arr)
end

def gamma_fnc(num)
  num = num -1
  return 1 if num <= 1
  num * gamma_fnc(num)
end

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors.pop == favorite
  ice_cream_shop(flavors, favorite)
end

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end

if __FILE__ == $PROGRAM_NAME
  p sum_to(5)
  p sum_to(9)

  p add_numbers([1,2,3,4])
  p add_numbers([-80,34,7])

  p gamma_fnc(4)
  p gamma_fnc(8)

  p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  p ice_cream_shop([], 'honey lavender')  # => returns false
  
  p reverse("house")
  p reverse("dog")
  p reverse("q")
end
