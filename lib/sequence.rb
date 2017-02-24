class Sequence

  def initialize(value)
    @value = value
  end

  def next
    initial_seq = @value.split('')
    result_seq = []
    count = 1
    initial_seq.size.times do
      if (value = initial_seq.shift) == initial_seq.first
        count += 1
      else
        result_seq << count << value
        count = 1
      end
    end

    @value = result_seq.join
    self
  end

  def to_s
    @value
  end
end
