class Complement 
  VERSION=3
  RNA_TRANSCRIPTIONS = {:G => :C, :C => :G, :T => :A, :A => :U}
  def self.of_dna(nucleotide)
    nucleotide.split("").map do |protein| 
      raise ArgumentError unless RNA_TRANSCRIPTIONS.key?(protein)
      RNA_TRANSCRIPTIONS[protein]
    end.join
  end
end