require_relative 'complex_num'

class MandelbrotStategy
  def initialize(threshold = 1000)
    @threshold = threshold
  end

  def convergeance(count, position)
    @position = position
    convergeance = get_convergence(count)

    return 0 if convergeance == -1

    (count - convergeance).to_f / count
  end

  private

  def get_convergence(count, current = ComplexNum.new(0, 0))
    return -1 if count <= 0
    return count if current.taxicab_size > @threshold

    get_convergence count - 1, current.square + @position
  end
end
