class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select {|sub| sub.gym == self}
  end

  def self.lifters_for(gym)
    result = Membership.all.select {|sub| sub.gym == gym}
    result.map{|sub| sub.lifter.name}
  end

  def all_lifters
    self.all_memberships.map {|sub| sub.lifter.name}
  end

  def lift_total
    subs = self.all_memberships
    subs.uniq!
    subs.inject(0) {|sum, sub| sum += sub.lifter.lift_total}
  end
end
