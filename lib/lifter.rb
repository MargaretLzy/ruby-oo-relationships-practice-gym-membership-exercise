class Lifter
  attr_reader :name, :lift_total
  @@all=[]
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all
    @@all
  end
  
  def memberships
    Membership.all.select{|member|member.lifter == self}
  end
  def gyms
    memberships.map{|member| member.gym}
  end
  
  def self.average_lift
   self.all.sum{|lifter| lifter.lift_total.to_f/self.all.count}
   
 end
  def total_cost
    memberships.sum{|member| member.cost}
  end
  def new_gym(cost,gym)
    Membership.new(cost,self,gym)
  end
end
    
