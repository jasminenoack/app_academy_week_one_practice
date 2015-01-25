require 'byebug'


def is_prime?(num)
  highest_possible_factor = (num**(0.5)).to_i
  (2..highest_possible_factor).none? {|index| num % index == 0}
end

def first_prime_palindrome_under(num)
  return num if  is_prime?(num) && num.to_s == num.to_s.reverse

  first_prime_palindrome_under(num-1)
end


p first_prime_palindrome_under(999)