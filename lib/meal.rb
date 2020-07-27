class Meal
  attr_accessor :waiter, :customer, :total, :tip
  
  @@all = []
  
  def initalize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
    
  end
  
  
  def self.all
    @@all
  end 
  
end