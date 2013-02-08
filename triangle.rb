# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  ## cheap if way to do it.

  [a,b,c].map do |num|
    raise TriangleError, "A triange side must be larger than 0." if num <= 0
    raise TriangleError, "Two sides must equal the third side." if ((a+b<=c) || (a+c<=b) || (b+c<=a))
  end 



  # [a,b,c].each do |num|
  #   if num < 0
  #     raise TriangleError, "A triange side cannot be a negative number, bro."
  #   end
  # end 

  # if a + b < c

  # if ((a == b) && (a == c) && (b == c))
  #   :equilateral
  # elsif ((a == b) || (a == c) || (b == c))
  #   :isosceles
  # else
  #   :scalene
  # end

  # # using case + uniq
  case [a,b,c].uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
