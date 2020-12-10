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


def check_sides_positive(sides_array)
  raise TriangleError if sides_array.select { |side| side <= 0 }.length.positive?
end

def check_build_triangle_is_possible(sides_array)
  a,b,c = sides_array.sort

  raise TriangleError if (a+b) <= c
end

def triangle(a, b, c)
  sides_array = [a,b,c]

  check_sides_positive(sides_array)
  check_build_triangle_is_possible(sides_array)

  case sides_array.uniq.length
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
