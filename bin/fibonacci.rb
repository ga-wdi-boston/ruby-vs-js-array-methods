fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

# def times_two(number)
#   number * 2
# end

# twice_fibs = fibs.map { |fib| times_two(fib) }
# twice_fibs = fibs.map { |fib| fib * 2}

# fibs.map do |fib|
#   fib * 2
# end

# sum
sum_fibs = fibs.reduce(0) { |result, element| result + element }

# other syntax
sum_fibs_other = fibs.reduce(:+)


# product
prod_fibs = fibs.slice(1,fibs.length)
.reduce(1) { |result, element| result * element }

# other syntax
prod_fibs_other = fibs.slice(1,fibs.length)
.reduce(:*)


# sum odd
sum_odd = fibs.select { |num| num.odd? }
.reduce(0) { |result, element| result + element }

# other syntax
sum_odd_other = fibs.select { |num| num.odd? }
.reduce(:+)


# prod even
prod_even = fibs.select { |num| num.even? && num > 0 }
.reduce(1) { |result, element| result * element }

# other syntax
prod_even_other = fibs.select { |num| num.even? && num > 0 }
.reduce(:*)


# print out
p 'fibs: ', fibs
p 'sum_fibs: ', sum_fibs
p 'sum_fibs_other: ', sum_fibs_other
p 'prod_fibs: ', prod_fibs
p 'prod_fibs_other: ', prod_fibs_other
p 'sum_odd: ', sum_odd
p 'sum_odd_other: ', sum_odd_other
p 'prod_even: ', prod_even
p 'prod_even_other: ', prod_even_other
p 'fibs: ', fibs
