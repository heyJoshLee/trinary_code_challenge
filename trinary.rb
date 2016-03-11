class Trinary
  attr_accessor :num

  def initialize(input)
    @num = input 
  end

  def to_decimal
    return 0 if @num.match(/\D/)
    @num.split("").reverse.each_with_index.inject(0) do |sum, (num, index)|
      sum += num.to_i * 3**(index)
    end
  end

end