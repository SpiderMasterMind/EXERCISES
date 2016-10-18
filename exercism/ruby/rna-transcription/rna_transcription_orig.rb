class Complement
  VERSION = 3
  def self.of_dna(dna_strand)
    rna_nucleotides = nucleotides_of(dna_strand).map { |nucleotide|
      rna_complement(nucleotide) }
    strand_of(rna_nucleotides)
  end

  def self.of_rna(rna_strand)
    dna_nucleotides = nucleotides_of(rna_strand).map { |nucleotide|
      dna_complement(nucleotide) }
    strand_of(dna_nucleotides)
  end


  private

  def self.rna_complement(nucleotide)
    complement(dna2rna_transcriptions, nucleotide)
  end

  def self.dna_complement(nucleotide)
    complement(rna2dna_transcriptions, nucleotide)
  end

  def self.complement(transcriptions, nucleotide)
    transcriptions.fetch(nucleotide) { raise ArgumentError }
  end

  def self.nucleotides_of(strand)
    strand.chars                        # converts string to array of chars
  end

  def self.strand_of(nucleotides)
    nucleotides.join                    # use this to join the string
  end

  def self.dna2rna_transcriptions
    {'G' => 'C',
     'C' => 'G',
     'T' => 'A',
     'A' => 'U'}
  end

  def self.rna2dna_transcriptions
    dna2rna_transcriptions.invert       # returns new Hash - opposite of above
  end

end