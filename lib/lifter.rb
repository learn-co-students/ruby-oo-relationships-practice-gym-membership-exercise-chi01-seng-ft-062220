class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select{|sub| sub.lifter == self}
  end

  def get_gyms
    result = self.get_memberships
    result.map {|sub| sub.gym}
  end

  def self.average_lift
    lifters = Membership.all.map {|sub| sub.lifter}
    lifters.uniq!
    numerator = lifters.inject(0) {|sum, lifter| sum += lifter.lift_total}
    numerator / lifters.size
  end

  def total_cost
    self.get_memberships.inject(0) {|sum, sub| sum += sub.cost}
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
end
