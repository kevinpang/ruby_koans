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
  raise TriangleError if a <= 0 || b <= 0 || c <= 0
  
  sorted = [a, b, c].sort
  raise TriangleError if sorted[0] + sorted[1] <= sorted[2] # Sum of shortest two sides of a triangle must be greater than the longest side
  
  case [a, b, c].uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
  
  # return :equilateral if a == b && a == c
  # return :isosceles if a == b || b == c || a == c
  # :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
