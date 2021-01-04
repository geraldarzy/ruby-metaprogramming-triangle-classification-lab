require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :a, :b, :c


  def initialize(a,b,c)
    self.a = a
    self.b = b
    self.c = c
  end

  def kind
    trianglevalid?
    
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @c == @b
      :isosceles
    else
      :scalene
    end
      
    
  end

  def trianglevalid?
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    elsif @a <= 0 ||@b <= 0 ||@c <= 0 
      raise TriangleError
    end
  end

  

  class TriangleError < StandardError


  end
  
end
