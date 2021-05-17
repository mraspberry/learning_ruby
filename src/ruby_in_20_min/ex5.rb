#!/usr/bin/env ruby
# frozen_string_literal: true

# this is the same as EX4 but with duplicate code removed

# MultiGreeter can take either a single name or list of names
class MultiGreeter
  attr_accessor :names

  def initialize(names = "world")
    @names = names
  end

  def greet
    msg = 'Hello %s' # rubocop: disable Style/StringLiterals
    process msg
  end

  def bye
    # rubocop: disable Style/StringLiterals
    msg = 'Goodbye %s. It\'s been real, it\'s been fun, it\'s been real fun.'
    # rubocop: enable Style/StringLiterals
    process msg
  end

private

  def process(message)
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts message % name.capitalize
      end
    else
      puts message % @names.capitalize
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
