class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (self.side1 + self.side2) < self.side3 || (self.side1 + self.side3) < self.side2 || (self.side2 + self.side3) < self.side1
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
      :scalene
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      :isosceles
    elsif self.side1 == self.side2 && self.side1 == self.side3 && self.side2 == self.side3
      :equilateral
    end

  end

  class TriangleError
    def message
      "Invalid Triangle: The length of any two sides must be larger than the third side"
    end

end
