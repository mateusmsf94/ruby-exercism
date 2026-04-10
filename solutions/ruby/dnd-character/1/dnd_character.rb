# frozen_string_literal: true

# Generates a random D&D character with six ability scores and hitpoints.
class DndCharacter
  ABILITIES = %i[strength dexterity constitution intelligence wisdom charisma].freeze

  attr_reader(*ABILITIES)

  def self.modifier(score)
    (score - 10) / 2
  end

  def initialize
    ABILITIES.each { |a| instance_variable_set("@#{a}", roll_ability) }
  end

  def hitpoints
    10 + self.class.modifier(constitution)
  end

  private

  def roll_ability
    4.times.map { rand(1..6) }.sort.last(3).sum
  end
end
