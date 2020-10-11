class Bloodoath

  attr_reader :init_date, :cult, :follower

  @@all=[]

  def initialize(init_date, cult, follower)
    @@init_date = init_date
    @@all << self
    @cult = cult
    @follower = follower

  end
 
  def self.all
    @@all
  end
end