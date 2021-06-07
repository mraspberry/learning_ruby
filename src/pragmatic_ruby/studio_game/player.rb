# frozen_string_literal: true

class Player # rubocop:disable Style/Documentation
  attr_accessor :name

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def status
    "I'm #{@name} with a current health of #{@health}"
  end

  def w00t
    health(@health + 15)
  end

  def blam
    health(@health - 15)
  end

  private

  def health(new_health)
    new_health = 0 if new_health.negative?
    @health = new_health
  end
end
