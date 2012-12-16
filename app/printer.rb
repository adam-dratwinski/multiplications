class Printer
  attr_accessor :array, :cols_lenghts

  def initialize(array)
    @array = stringify_values(array)
  end

  def cols_lengths
    lenghts = []

    @array.first.length.times do |i|
      lenghts << @array.map { |a| a[i].size }.max
    end

    lenghts
  end

  def print
    string = "\n"

    array.each do |rows|
      string += "|"
      rows.each_with_index do |row, i|
        string += print_cell(row, cols_lengths[i])
      end
      string += "\n"
    end

    string
  end

  private

  def stringify_values(array)
    array.map do |a| 
      a.map { |a| a.to_s }
    end
  end

  def print_cell(value, size)
    string = " "
    string += value
    string += " " * (size - value.size) 
    string += " |"
  end
end


