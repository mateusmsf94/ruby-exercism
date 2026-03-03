module ResistorColorDuo

  COLOR_VALUES = {
  'black'  => 0,
  'brown'  => 1,
  'red'    => 2,
  'orange' => 3,
  'yellow' => 4,
  'green'  => 5,
  'blue'   => 6,
  'violet' => 7,
  'grey'   => 8,
  'white'  => 9
}.freeze

  def self.color_to_value(color)
    COLOR_VALUES[color]
  end
  
  def self.value(colors)
    color_to_value(colors[0]) * 10 + color_to_value(colors[1])
  end
end
