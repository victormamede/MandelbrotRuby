require_relative 'complex_num'
require_relative 'mandelbrot_strategy'
require_relative 'utils'

SIZE = ComplexNum.new 200, 60
SCALE = 0.03
SHIFT = ComplexNum.new(-0.5, 0)

strategy = MandelbrotStategy.new

SIZE.imaginary.to_i.times do |y|
  SIZE.real.to_i.times do |x|
    position = ComplexNum.new (x - (SIZE.real / 2)) / 2, y - (SIZE.imaginary / 2)

    sized_position = (position * SCALE) + SHIFT

    print opacity_to_char(strategy.convergeance(100, sized_position))
  end
  puts ''
end
