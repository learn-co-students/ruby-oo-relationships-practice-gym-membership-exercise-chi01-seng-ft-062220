class Gym
  attr_reader :name, :member_name, :lift_total
  @@all = []

  # Get a list of all gyms
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # Get a list of all memberships at a specific gym
  def all_memberships
    Membership.all.select {|member_info| member_info.gym_name == self}
  end
  
  # Get a list of all the lifters that have a membership to a specific gym
  def specific_members
    Membership.all.select {|member_info| member_info.gym_name == self}.map{|member_info| member_info.member_name}
  end

  # Get a list of the names of all lifters that have a membership to that gym
  def specific_member_names
    self.specific_members.map{|member_info| member_info.name}
  end

  # Get the combined lift total of every lifter has a membership to that gym
  def member_lift_totals
    self.specific_members.map{|member_info| member_info.lift_total}.sum
  end
end
#worked