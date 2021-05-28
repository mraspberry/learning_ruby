#!/usr/bin/env ruby

class Player
  attr_reader :name
  attr_accessor :health

  def initialize(name, health)
    @name = name
    @health = health
  end
end

greeting = "Welcome!"
3.times do
  puts greeting
end
puts Time.new

larry = Player.new("Larry", 60)
puts "#{larry.name}'s health is #{larry.health}"
