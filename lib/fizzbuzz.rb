require 'pry'

# Let `max_num` be the number that you want to count to.
# max_num = 100

# 1.upto(max_num) do |i|
#   if (i % 3).zero? && (i % 5).zero?
#     p 'FizzBuzz'
#   elsif (i % 3).zero?
#     p 'Fizz'
#   elsif (i % 5).zero?
#     p 'Buzz'
#   else
#     p i
#   end
# end

# def fizzbuzz(num)
#   1.upto(num) do |i|
#     if (i % 3).zero? && (i % 5).zero?
#       p 'FizzBuzz'
#     elsif (i % 3).zero?
#       p 'Fizz'
#     elsif (i % 5).zero?
#       p 'Buzz'
#     else
#       p i
#     end
#   end
# end
#
# binding.pry
# ''

def fizz_buzz(num)
  fb = {
    fizz: [],
    buzz: [],
    fizzbuzz: [],
    other: []
  }
  1.upto(num) do |i|
    if (i % 3).zero? && (i % 5).zero?
      fb[:fizzbuzz] << i
    elsif (i % 3).zero?
      fb[:fizz] << i
    elsif (i % 5).zero?
      fb[:buzz] << i
    else
      fb[:other] << i
    end
  end
  return fb
end

binding.pry
''
