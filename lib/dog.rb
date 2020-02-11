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
      if dog != "Snoopy"
      puts dog  
    end
    end 
  end
  def self.clear_all 
    @@all.clear
  end 
  def save 
    @@all << self 
  end
end
  