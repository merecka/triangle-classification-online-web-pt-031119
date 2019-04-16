class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0 || (self.side1 + self.side2) <= self.side3 || (self.side1 + self.side3) <= self.side2 || (self.side2 + self.side3) <= self.side1
      begin
        raise TriangleError
    #  rescue TriangleError => error
    #    error.message
      end
      #Equilateral triangle: An equilateral triangle is a triangle that has three equal sides.
    elsif ((self.side1.to_f + self.side2.to_f + self.side3.to_f) / 3).to_f == self.side3.to_f
        :equilateral
        #Isosceles triangle: An isosceles triangle is a triangle that has two equal sides.
    elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
        :isosceles
        #Scalene Triangle:  A scalene triangle is a triangle that has no equal sides.
    elsif self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
        :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle: The length of any two sides must be larger than the third side"
    end
  end

end

# if (self.side1 + self.side2) < self.side3 || (self.side1 + self.side3) < self.side2 || (self.side2 + self.side3) < self.side1 || self.side1 < 0 || self.side2 < 0 || self.side3 < 0
