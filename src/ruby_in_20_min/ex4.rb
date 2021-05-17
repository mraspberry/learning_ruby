#!/usr/bin/env ruby
# frozen_string_literal: true

# MultiGreeter can take either a single name or list of names
class MultiGreeter
  attr_accessor :names

  def initialize(names = "world")
    @names = names
  end

  def greet
    if @names.nil? # methods ending in question marks return booleans
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name.capitalize}"
      end
    else
      puts "Hello #{@names.capitalize}!"
    end
  end

  def bye
    if @names.nil? # methods ending in question marks return booleans
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Bye #{name.capitalize}. It was real, it was fun, it was real fun."
      end
    else
      puts "Bye #{@names.capitalize}. It was real, it was fun, it was real fun."
    end
  end
end

# assume the below is equivalent to python's if __name__ == '__main__'
if __FILE__ == $PROGRAM_NAME
  mg = MultiGreeter.new("matt")
  mg.greet
  mg.bye

  # change to an array of names
  # The %w is shorthand to create an array of strings seperated by space
  # see https://www.zenspider.com/ruby/quickref.html
  mg.names = %w(matt matthew)
  mg.greet
  mg.bye
end
