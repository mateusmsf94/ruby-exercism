module Blackjack
  DEALER_DANGEROUS_CARDS = %w[ace ten jack queen king].freeze
  DEALER_HIGH_CARDS = %w[seven eight nine ten jack queen king ace].freeze
  
  def self.parse_card(card)
    case card
      when "ace" then 11
      when "two" then 2
      when "three" then 3
      when "four" then 4
      when "five" then 5
      when "six" then 6
      when "seven" then 7
      when "eight" then 8
      when "nine" then 9
      when "ten", "jack", "queen", "king" then 10
      else 0
    end
  end

  def self.card_range(card1, card2)
    value = parse_card(card1) + parse_card(card2)
    case value
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    return "P" if card1 == "ace" and card2 == "ace"
  
    sum = parse_card(card1) + parse_card(card2)
  
    case sum
    when 21
      DEALER_DANGEROUS_CARDS.include?(dealer_card) ? "S" : "W"
    when 17..20
      "S"
    when 12..16
      DEALER_HIGH_CARDS.include?(dealer_card) ? "H" : "S"
    else
      "H"
    end
  end
end
