# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  sum = 0
  arr.each { |elem| sum+=elem }
  return sum
end


def max_2_sum (arr)
  if arr.empty?
    return 0
  elsif arr.size == 1
    return arr[0]
  else
  arr = arr.sort {|x,y| y <=> x}
  return arr[0] + arr[1]  
  end
end

def sum_to_n? (arr, n)
  if arr.empty?
    return false
  else
    for num1 in arr
      for num2 in arr
        if num1 + num2 == n && num1 != num2 
          return true
        end
      end
    end

    return false
  end

end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if(['a','e','i','o','u','A','E','I','O','U'].include? s[0])
    return false
  elsif s.empty?
    return false
  elsif !((s.ord >= 65 && s.ord <= 90)  || (s.ord >= 97 && s.ord <= 122))
    return false      
  else
    return true
  end
end

def binary_multiple_of_4? (s)
  s = s.reverse

  #Valid Bit String?
  s.each_char do |c|
    if !(c == '0' || c == '1')
      return false;
    end
  end

  if(s[0] == '0' && s[0] == '0')
    return true
  else
    return false
  end

end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(_isbn, _price)
    
    if _isbn.empty?
      raise ArgumentError
    else
      @isbn = _isbn
    end

    if  _price <= 0
      raise ArgumentError
    else
      @price = _price
    end
  end
  
  def price_as_string
    return "$" + '%.2f' % price.to_s
  end  

end
