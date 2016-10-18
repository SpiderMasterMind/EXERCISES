# Hamming solution 9/8/16
class DNA
  VERSION = 1
  def self.hamming_distance(sequence1, sequence2)
    #raise ArgumentError, 'sequences not equal' unless sequence1.length == sequence2.length
    hamming_number = 0
    counter = 0
    sequence1.each_char do |char|
      hamming_number += 1 if char != sequence2[counter]
      counter += 1
    end
    hamming_number
  end
end
