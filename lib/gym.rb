class Gym
  attr_reader :name
@@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def memberships
    Membership.all.select{|member|member.gym == self}
  end
 def lifters
    memberships.map{|member| member.lifter}
  end
  
   def lifters_name
    lifters.map{|lifter| lifter.name}
  end
  
  #the combined lift total of every lifter has a membership to that gym
  def lift_total
    lifters.sum{|lifter| lifter.lift_total}
end
end
