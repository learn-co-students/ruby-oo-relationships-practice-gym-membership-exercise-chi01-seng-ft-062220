class Gym

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |contract| contract.gym == self }
  end

  def lifters_at_gym
    my_members = Membership.all.select { |contract| contract.gym == self }
    my_members.map { |membership| membership.lifter}
  end

  def names_of_lifters
    members = Membership.all.select { |contract| contract.gym == self} 
    my_lifters = members.map  { |membership| membership.lifter}
    my_lifters.map { |lifter| lifter.name} 
    # my_lifters.select { |membership| member.name}
  end

  def lift_total
    my_members = Membership.all.select { |contract| contract.gym == self }
    my_lifters = my_members.map  { |membership| membership.lifter}
    my_lifters.sum { |member| member.lift_total}
  end
end
