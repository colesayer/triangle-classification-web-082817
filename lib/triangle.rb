class Triangle

  attr_accessor :kind, :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif triangle_inequality? != true
      raise TriangleError
    elsif all_sides_equal? == true
      :equilateral
    elsif two_sides_equal? == true
      :isosceles
    else
      :scalene
    end
  end

  def triangle_inequality?
    (@side1 + @side2) > @side3 &&
    (@side2 + @side3) > @side1 &&
    (@side1 + @side3) > @side2
  end

  def all_sides_equal?
    @side1 == @side2 && @side2 == @side3
  end

  def two_sides_equal?
    @side1 == @side2 || @side2 == @side3 || @side1 == @side3
  end


end

class TriangleError < StandardError
end
