require "#{Dir.pwd}/multiplication_table"
require "#{Dir.pwd}/prime_number"
require "#{Dir.pwd}/printer"

multiplication_table = MultiplicationTable.new(PrimeNumber.generate(10), PrimeNumber.generate(10)).get_all

puts Printer.new(multiplication_table).print
