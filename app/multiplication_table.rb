class MultiplicationTable
  attr_accessor :rows, :cols

  def initialize(rows, cols)
    @rows, @cols = rows, cols
  end

  def get_row(n)
    @rows.map { |v| v * @cols[n] } 
  end

  def get_all
    result = [["x"] + @rows]

    @cols.size.times do |i|
      result << [@cols[i]] + get_row(i)
    end

    result
  end
end
