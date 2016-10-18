# divisor = 2
# if n % divisor == 0, [] << divisor
# then do n/divisor
# result = n and repeat
# else divisor += 1 & repeat
# repeat while divisor < n
# use contains? to output text
require 'pry'


def find_prime_factors(num)
  
divisor = 2
result = []
while divisor < num
  
    result << divisor if num % divisor == 0
    divisor += 1
end
result
end

def make_string(num)
  string = num.to_s
  arr = find_prime_factors(num)
  string << 'Pling' if arr.include? 3
  string << 'Plang' if arr.include? 5
  string << 'Plong' if arr.include? 7
  string.shift if string.include? 'PlingPlangPlong'
  string
end

p make_string(28)