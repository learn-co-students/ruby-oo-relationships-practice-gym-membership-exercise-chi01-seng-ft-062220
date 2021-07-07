class Membership

  @@all = []
  attr_reader :cost, :lifter, :gym

  def initialize(cost, gym, lifter)
    @cost = cost
    @@all << self
    @gym = gym
    @lifter = lifter
  end

  def self.all
    @@all
  end

  
end
