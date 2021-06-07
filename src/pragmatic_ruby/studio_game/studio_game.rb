#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "player"

greeting = "Welcome!"
3.times do
  puts greeting
end
puts Time.new

larry = Player.new("larry")
puts larry.status
larry.w00t
puts larry.status
2.times do
  larry.blam
end
puts larry.status
