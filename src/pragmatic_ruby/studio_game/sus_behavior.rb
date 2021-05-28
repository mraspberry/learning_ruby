#!/usr/bin/env ruby

def set_state
  @name = "Matt"
end

def check_state
  puts @name
  @name = "Sus"
  puts @name
end

set_state
check_state

