# Add your code here 
class Dog 
  @@all = [ ] 
  @@names =[ ]
  attr_reader :name
  def initialize(name) 
    @name = name 
    save 
    if @@names.include?(name) == false 
      @@names << name 
    end
  end 
  def self.all 
    @@all 
  end 
  def self.print_all 
    @@names.each do |dog| 
      puts dog 
    end 
  end
  def self.clear_all 
    @@all.collect do |dog| 
      @@all.delete(dog) 
    end 
    @@all
  end 
  def save 
    @@all << self 
  end
end
  