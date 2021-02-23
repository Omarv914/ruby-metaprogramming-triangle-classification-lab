class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid_triangle
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      false
    elsif (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side3 + side1) <= side2
      false
    else
      true
    end
end

def kind
  if self.valid_triangle == false
    raise TriangleError
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  else
    :scalene
  end
end

class TriangleError < StandardError
  def message
    puts "This is not a valid triangle."
  end
end
end
