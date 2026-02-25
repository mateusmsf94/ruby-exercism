class SimpleCalculator
  # Nested inside SimpleCalculator so it's called as SimpleCalculator::UnsupportedOperation
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation, "Unsupported operation" unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError, "Invalid argument type" unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
    raise ZeroDivisionError if second_operand == 0 && operation == '/'

    result = case operation
             when '+' then first_operand + second_operand
             when '*' then first_operand * second_operand
             when '/' then
               quotient = first_operand.to_f / second_operand
               quotient == quotient.ceil ? quotient.to_i : quotient
             end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  rescue ZeroDivisionError
    "Division by zero is not allowed."
  end
end