class ComplexNum
  attr_reader :real, :imaginary

  def initialize(real, imaginary)
    @real = real.to_f
    @imaginary = imaginary.to_f
  end

  def square
    # (a + bi)^2
    # => a^2 + 2.a.bi + b^2.i^2
    # => a^2 - b^2 + 2abi
    real_part = @real * @real - @imaginary * @imaginary
    imaginary_part = 2 * @real * @imaginary

    ComplexNum.new real_part, imaginary_part
  end

  def +(other)
    ComplexNum.new @real + other.real, @imaginary + other.imaginary
  end

  def *(other)
    ComplexNum.new @real * other, @imaginary * other
  end

  def /(other)
    ComplexNum.new @real / other, @imaginary / other
  end

  def taxicab_size
    @real + @imaginary
  end
end
