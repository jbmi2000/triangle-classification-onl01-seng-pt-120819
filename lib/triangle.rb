class Triangle
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3

  end

  # def valid?
  #   sum_one_two = @triangle_sides[0] + @triangle_sides[1]
  #   sum_one_three = @triangle_sides[0] + @triangle_sides[2]
  #   sum_two_three = @triangle_sides[1] + @triangle_sides[2]
  # 
  #   if (@triangle_sides.none? {|side| side <= 0}) &&
  #     (sum_one_two > @triangle_sides[2] || sum_one_three > @triangle_sides[1] || sum_two_three > @triangle_sides[0])
  #     return true
  #   else
  #     return false
  #   end
  # end

  def kind
      if ((@s1 * @s2 * @s3) == 0) || ((@s1 + @s2) <=@s3) || ((@s2 + @s3) <=@s1) || ((@s1 + @s3) <= @s2)
        
        begin
         raise TriangleError
           puts error.message
         end

      elsif @s1 == @s2 && @s2 == @s3
        self.kind = :equilateral
      elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3
        self.kind = :isosceles
      else
        self.kind = :scalene

      end
    else
      raise TriangleError
    end
  end
class TriangleError < StandardError

end
end
