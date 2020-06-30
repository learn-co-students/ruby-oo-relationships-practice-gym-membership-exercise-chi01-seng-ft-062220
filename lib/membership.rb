class Membership
  attr_reader :cost
  attr_accessor :member_name, :gym_name
  @@all = []

  # Get a list of all memberships
  def initialize(cost,member_name,gym_name)
    @cost = cost
    @gym_name = gym_name
    @member_name = member_name
    @@all << self
  end

  def self.all
    @@all
  end
end
#worked
