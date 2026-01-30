module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    prefix = ship_identifier.to_s[0..2]
    if prefix == 'OIL' or prefix == 'GAS'
      'A'.to_sym
    else
      'B'.to_sym
    end
  end
end
