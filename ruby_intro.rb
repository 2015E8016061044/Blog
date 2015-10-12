# When done, submit this entire file.
# encoding UTF-8
# Part 1
def sum arr
  puts "请输入比较数组的数据，数据间以空格间隔并以*结束："
  line = gets
  if line.strip == '*'
    return 0
  end
  nums = line.split(/\s+/);
  result = 0

  nums.each do |num|
    result += num.to_i
  end
  return result
end
puts sum ()

def max_2_sum arr
  puts "请输入比较数组的数据，数据间以空格间隔并以*结束："
  arr=gets
  if arr.strip=='*'
    puts "数组为空，返回"
    return 0
  end
  nums = arr.split(/\s+/);
  if nums.size.to_s==1
    puts "数组只有一个元素，最大值："
    return nums[1]
  else
    puts "最大值："+nums.max
    b=nums.max
    arr1=nums.delete_if{|value|value==nums.max}
    puts "次大值："+arr1.max
  end
end
puts max_2_sum ()

def sum_to_n
  puts "输入数组元素"
  arr=gets
  nums =arr.scan(/\d+/);
  puts "输入N"
  n=gets
  n1=n.strip.to_i
  if arr.length==0
    puts "数组为空 "
    if n1==0
      return true
    end
  end
  nums.each_with_index do |num1, index1|
    nums.each_with_index do |num2, index2|
      if (index1 > index2 && n1==num1.to_i+num2.to_i)
        return true
      end
    end
  end

  return false
end
puts sum_to_n
# Part 2

def hello(name)
  # YOUR CODE HERE
  puts "hello   "+name+"!"
end
puts hello("张巧丽")

def starts_with_consonant? (s)
  # YOUR CODE HERE
  info=s[0,1]
  arr=["a","e","i","o","u","A","E","I","O","U"]
  arr.each do |word|
    if info==word
      return false
    else
      return true
    end
  end
end
puts starts_with_consonant?("gll")

def binary_multiple_of_4? (s)
  # YOUR CODE HERE
  arr=s.scan(/./)
  sum=0
  l=arr.length
  arr.each do |word|
    if word=="1"||word=="0"
      sum+=word.to_i*2**(l-1)
      l=l-1
    else
      puts"不是二进制数"
      return false
    end
  end
  if sum%4==0
    return true
  else
    puts "不能整除4"
    return false
  end
end
puts binary_multiple_of_4? ("111100")

# Part 3
class BookInStock
  def initialize(isbn,price)
    @book_id=isbn
    @book_price=(price.match /\d+(\.\d+)?/)[0]
    @book_price = @book_price.to_f
    if @book_id==""||@book_price < 0
      # wrong number of arguments (0 for 1) (ArgumentError)
      raise ArgumentError
    end
    #@book_price = @book_price * 100 / 100.0
  end
  def price_as_string
    puts "价钱为：$%.2f" % [@book_price]
  end
end
book=BookInStock.new( '78','67.43332')
book.price_as_string()

