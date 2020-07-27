class Customer
  
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end 
    
    
  
  def self.all
    @@all
  end
  
  def meals
    Meal.select {|meal| meal.customer == self }
  end
  
end