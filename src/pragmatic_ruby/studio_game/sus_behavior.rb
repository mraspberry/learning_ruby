#!/usr/bin/env ruby
# frozen_string_literal: true

def set_state
  @name = 'Matt'
end

def check_state
  puts @name
  @name = 'Sus'
  puts @name
end

set_state
check_state
