class Triangle
  attr_accessor :a, :b, :c

  def initialize (a, b, c) #require sides a, b and c on initialization
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a<=0 || b<=0 || c<=0 || a+b<=c || a+c<=b || b+c<=a # if any side is 0 or less  and if any of the sides is bigger than sum of the other two than this is not a valid triangle
      raise TriangleError
    end
    if a == b && a == c && b == c
      :equilateral
    elsif a == b || a == c || b == c 
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    
  end
end
