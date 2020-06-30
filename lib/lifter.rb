class Lifter

  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all 
    @@all 
  end

  def memberships
    Membership.all.select { |contract| contract.lifter == self }
  end

  def gyms
    my_gyms = Membership.all.select { |contract| contract.lifter == self }
    my_gyms.map { |membership| membership.gym}
  end

  def total_cost
    my_gyms = Membership.all.select { |contract| contract.lifter == self }
    my_gyms.sum { |membership| membership.cost }
  end

  def signup(gym, cost)
    Membership.new(cost, gym, self)
  end

  def self.lift_total
    Lifter.all.sum { |lifter| lifter.lift_total} / Lifter.all.count
  end


end
