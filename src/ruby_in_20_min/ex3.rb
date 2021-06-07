#!/usr/bin/env ruby
# frozen_string_literal: true

class Greeter
  def initialize(name = "world")
    @name = name.capitalize # this is an instance variable
  end

  # don't have to put the 'self' arg or even parens. This is sus
  def greet
    puts "Hello, #{@name}!"
  end

  def bye
    puts "Goodbye #{@name}. Don't let the door hit you on the way out"
  end
end

greeter = Greeter.new("world")
puts "greeter.respond_to?('name') #{greeter.respond_to?('name')}"
greeter.greet
greeter.bye
# apparently to make the name value changeable you have to redefine the class? Super sus
class Greeter
  attr_accessor :name
end

greeter = Greeter.new("matt")
puts "greeter.respond_to?('name') #{greeter.respond_to?('name')}"
greeter.greet
greeter.name = "matthew" # NOTE: here this doesn't call initialize apparently
greeter.greet
greeter.bye
