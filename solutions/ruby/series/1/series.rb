=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
  def initialize(digits)
    raise ArgumentError if digits.empty?
    @digits = digits
  end

  def slices(n)
    raise ArgumentError if n <= 0
    raise ArgumentError if n > @digits.length

    result = []
    (0..@digits.length - n).each do |i|
      result << @digits[i, n]
    end
    result
  end

  
end