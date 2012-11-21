class PrimeNumber
  def self.prime?(number)
    return false if number <= 1

    divider = number
    dividers = []

    while divider > 0
      dividers << divider if number % divider == 0
      divider -= 1
    end

    return dividers.size <= 2
  end

  def self.generate(count)
    numbers = []
    number = 1

    while numbers.size != count
      numbers << number if PrimeNumber.prime?(number)
      number += 1
    end

    numbers
  end
end
