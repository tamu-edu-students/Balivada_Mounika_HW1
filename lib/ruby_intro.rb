# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = 0
  if arr.length == 0
    return sum
  else
    (0..arr.length - 1).each { |i|
      sum = sum + arr[i]
    }
    return sum
  end
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    if arr[0] >= arr[1]
        max1 = arr[0]
        max2 = arr[1]
    else
        max1 = arr[1]
        max2 = arr[0]
    end
    (2..arr.length - 1).each { |i|
      if max1 <= arr[i]
        max2 = max1
        max1 = arr[i]
      elsif max2 <= arr[i] and arr[i] != max1
        max2 = arr[i]
      end
    }
    return max1 + max2
  end
end

def sum_to_n?(arr, number)
  if arr.length <= 1
    return false
  else
    (0..arr.length - 1).each { |i|
      (i + 1..arr.length - 1).each { |j|
        if arr[i] + arr[j] == number
          return true
        end
      }
    }
    return false
  end
end

# Part 2

def hello(name)
  str = "Hello, "
  str + name
end

def starts_with_consonant?(string)
  if string == ''
    return false
  else
    str = string.downcase
    if str[0] =~ /[bcdfghjklmnpqrstvwxyz]/
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4?(string)
  if string == "0" or string =~ /^[01]*(00)$/
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn == ''
    raise ArgumentError if price <=0
    @isbn = isbn
    @price = price
    price_as_string
  end

  def price
    @price
  end

  def isbn
    @isbn
  end

  def price=(price)
    @price = price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price_as_string
    "$" + ('%.2f' % price).to_s
  end
end
