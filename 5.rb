class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
    # h = '-----' if number == 0
    # h = '.----' if number == 1
    # h = '..---' if number == 2
    # h = '...--' if number == 3
    # h = '....-' if number == 4
    # h = '.....' if number == 5
    # h = '-....' if number == 6
    # h = '--...' if number == 7
    # h = '---..' if number == 8
    # h = '----.' if number == 9
    hash = {0 => '-----', 1 => '.----', 2 => '..---', 3 => '...--', 4 => '....-', 5 => '.....', 6 =>'-....' , 7 => '--...', 8 => '---..', 9 => '----.'}
    @number = hash[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
