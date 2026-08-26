=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = string.lines.map { |line| line.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end

  def row(index)
    rows[index - 1]
  end

  def column(index)
    columns[index - 1]
  end
end