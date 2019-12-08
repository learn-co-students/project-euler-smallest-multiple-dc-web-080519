# Implement your procedural solution here!
def smallest_multiple(num)
  divisors = *(2..num)
  i = num
  nondivisible = true

  while nondivisible
    nondivisible = false if divisors.all? { |div| i % div == 0 }
    i += num if nondivisible
  end
  
  return i
end