length = 25

for i in 1.upto(length) do
  if i % 3 == 0
    if i % 5 == 0
      puts 'Fizzbuzz'
    else puts 'Fizz'
    end
  elsif i % 5 == 0
    puts 'Buzz'
  else
    puts i
  end
end


fizz_buzz = {}

fizz_buzz['fizz'] = []
fizz_buzz['buzz'] = []
fizz_buzz['fizzbuzz'] = []
fizz_buzz['other'] = []

for i in 1.upto(length) do
  if i % 3 == 0
    if i % 5 == 0
      puts 'Fizzbuzz'
    else puts 'Fizz'
    end
  elsif i % 5 == 0
    puts 'Buzz'
  else
    puts i
  end
end
