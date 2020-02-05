class Pirate
  attr_accessor :name, :ships

  @@all = []

  def initialize(params)
    @name = params[:name]
    self.ships = []

    @@all << self
  end

  def self.all
    @@all
  end
end
