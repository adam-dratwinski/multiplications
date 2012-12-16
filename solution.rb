require "#{Dir.pwd}/app/multiplication_table"
require "#{Dir.pwd}/app/prime_number"
require "#{Dir.pwd}/app/printer"

multiplication_table = MultiplicationTable.new(PrimeNumber.generate(10), PrimeNumber.generate(10)).get_all

puts Printer.new(multiplication_table).print
