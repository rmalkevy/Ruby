
Partial Application
There is more to functional programming than immutable data & pure functions.

Like the partial application of functions, also known as “currying”.

def add(a,b)
  a + b
end
add_five = method(:add).curry[5]
add_five.call(5)
# 10
add_five.call(20)
# 25

divisible_by = ->(x,y) { y % x == 0 }.curry
list.select(&divisible_by.(5))
# [5, 10]
list.select(&divisible_by.(2))
# [2, 4, 6, 8, 10]
