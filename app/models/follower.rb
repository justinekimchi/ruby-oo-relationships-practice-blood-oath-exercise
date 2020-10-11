class Follower
  attr_reader :name, :age, :motto
  
  @@all = []

  def initialize(name, age, motto)
    @name =  name
    @age = age
    @motto = motto
    #@cults = []

    @@all << self

  end

  def cults
    bloods = Bloodoath.all.select {|blood| blood.follower == self}
    return bloods.map {|blood| blood.cult}
  end

  def join_cult(cult)
    cult.recruit_follower(self) #passing in the arg of follower(listed in cult method for recruit_follower) as self since we're in follower class)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select  {|follower| follower.age >= age}
  end
end