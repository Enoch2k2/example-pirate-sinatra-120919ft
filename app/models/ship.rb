class Ship
  attr_accessor :name, :pirate

  @@all = []

  def initialize(params)
    @name = params[:name]

    @@all << self
  end

  def self.all
    @@all
  end
end
