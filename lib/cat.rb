class Cat
  # code goes here
  
  attr_reader :name
  attr_accessor :owner, :mood
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def new_owner
    new_owner = Owner.new 
  end
  
  def mood
    @mood 
  end

  def self.all
    @@all
  end

end