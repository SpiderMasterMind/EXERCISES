# count from rightmost digit & go left
# double the value of every second digit
# if value >= 10 subtract 9
# add digits together, if total ends in 0 then VALID else INVALID

class Luhn
  attr_accessor :test_number

  def initialize(number)
    @test_number = number
    @number_length = test_number.to_s.length
  end

  def addends
    result = []
    reverse_number_and_make_array.each_with_index do |number, index|
      if index.even?
        result << number.to_i
      else modified_number = number.to_i * 2
        if modified_number >= 10
          modified_number = modified_number - 9
        end
      result << modified_number
      end
    end
    result.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    new_number = number * 10
    if new(new_number).valid?
      new_number
    else
      luhn_remainder = new(new_number).checksum % 10
      new_number + (10 - luhn_remainder)
    end
  end

  private

  def reverse_number_and_make_array
    array_to_process = test_number.to_s.reverse.split("")
  end
end


