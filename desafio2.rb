class AdvancedCalculator
  attr_accessor :history

  def initialize
    @history = []
  end

  def evaluate(expression)
    result = instance_eval(expression)
    @history << "#{expression} = #{result}"
    result
  rescue => e
    "Erro: #{e.message}"
  end

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    raise "Divisão por zero" if b == 0
    a / b.to_f
  end

  def power(a, b)
    a**b
  end

  def sqrt(a)
    raise "Número negativo" if a < 0
    Math.sqrt(a)
  end

  def log(a, base = Math::E)
    raise "Base deve ser maior que 0" if base <= 0
    Math.log(a, base)
  end

  def sin(angle)
    Math.sin(angle)
  end

  def cos(angle)
    Math.cos(angle)
  end

  def tan(angle)
    Math.tan(angle)
  end

  def complex_add(a, b)
    Complex(a) + Complex(b)
  end

  def complex_subtract(a, b)
    Complex(a) - Complex(b)
  end

  def complex_multiply(a, b)
    Complex(a) * Complex(b)
  end

  def complex_divide(a, b)
    Complex(a) / Complex(b)
  end

  def show_history
    @history.each { |entry| puts entry }
  end
end

# Exemplo de uso
calc = AdvancedCalculator.new
puts calc.evaluate("calc.add(5, 3)")                # Saída: 8
puts calc.evaluate("calc.power(2, 3)")              # Saída: 8
puts calc.evaluate("calc.sqrt(16)")                 # Saída: 4.0
puts calc.evaluate("calc.log(10, 10)")              # Saída: 1.0
puts calc.evaluate("calc.sin(Math::PI / 2)")        # Saída: 1.0
puts calc.evaluate("calc.complex_add(2+3i, 4+5i)")  # Saída: (6+8i)
calc.show_history
