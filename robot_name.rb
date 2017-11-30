# Robot class
class Robot
  @@names = []
  @@robots = 0
  LETTERS = ('A'..'Z').to_a.freeze
  NUMBERS = (0..9).to_a.freeze
  attr_reader :name
  def initialize
    @name = generate
    @@names << @name
    @@robots += 1
    if @@names.count(@name) == 2 && @@robots > 1
      @name = reset
    end
    @name
  end

  def reset
    @name = generate
  end

  def generate
    (LETTERS.sample(2) + NUMBERS.sample(3)).join
  end

  def self.show_names
    @@names
  end
end

p example = Robot.new
p example2 = Robot.new

p Robot.show_names

# Have to generate a 2 Letter Name with 3 digits at the end.
