class Lifter
  attr_reader :name, :lift_total, :gym_name
  @@all = []

  # Get a list of all lifters
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  
  def self.all
    @@all
  end

  # Get a list of all the memberships that a specific lifter has
  def all_memberships
    Membership.all.select {|member_info| member_info.member_name == self}
  end
  
  # Get a list of all the gyms that a specific lifter has memberships to
  def specific_gyms
    Membership.all.select {|member_info| member_info.member_name == self}.map{|member_info| member_info.gym_name.name}
  end

  # Get the average lift total of all lifters
  def self.average_total
    lifts = self.all.map {|info| info.lift_total}
    lifts.sum/lifts.count
  end

  # Get the total cost of a specific lifter's gym memberships
  def total_cost
    Membership.all.select {|member_info| member_info.member_name == self}.map{|member_info| member_info.cost}.sum
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_member(cost, gym)
    Membership.new(cost, self, gym)
  end
end
#worked