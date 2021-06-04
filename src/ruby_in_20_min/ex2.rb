#!/usr/bin/env ruby
# frozen_string_literal: true

class Greeter
  def initialize(name = 'world')
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

greeter = Greeter.new('world')
greeter.greet
greeter.bye
