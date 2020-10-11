class Cult
    attr_reader :name, :location, :founding_year, :slogan    

    @@all =[] #holds all instances of Cult class
    def initialize(name, location, founding_year, slogan)
      @name = name
      @location = location
      @founding_year = founding_year
      @slogan = slogan
      @followers =[]

      @@all << self #on initialize, add this instance to all instances of Cult
    end

    def recruit_follower(follower)
      @followers << follower
    end

    def cult_population
      @followers.length
    end

    def self.all
      @@all
    end

    def self.find_by_name(name)
       @@all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
      @all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
      @all.select {|cult| cult.founding_year == year}
    end

end