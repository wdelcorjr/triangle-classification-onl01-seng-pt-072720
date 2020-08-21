class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if @a + @b <= @c || @c + @b <= @a || @a + @c <= @b 
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    else
      :isosceles
    end
  end
  class TriangleError < StandardError
    def message
      "That ain't no triangle!"
    end
  end  
end
