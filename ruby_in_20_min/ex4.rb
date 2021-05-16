#!/usr/bin/env ruby

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

if __FILE__ == $0 # assume this is equivalent to python's __name__ == '__main__'
  mg = MultiGreeter.new("matt")
  mg.greet
  mg.bye

  # change to an array of names
  mg.names = [ "matt", "matthew" ]
  mg.greet
  mg.bye
end
