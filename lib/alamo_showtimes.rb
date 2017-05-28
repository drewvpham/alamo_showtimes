require_relative "./alamo_showtimes/version"
require_relative './alamo_showtimes/cli'

module AlamoShowtimes
  # Your code goes here...
end

class AlamoShowtimes
   attr_accessor :movie, :showtimes
   @@all=[]

   def initialize
     @@all<<self
   end

   def self.all
     @@all
   end


   def self.reset_all
     @@all.clear
   end


end
