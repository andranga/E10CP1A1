class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@contador = 0
  def initialize(model, year)
    super
    @@contador += 1
  end

  def self.cantidad
  	@@contador
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

c1=Car.new('sprint', 1990)
c2=Car.new('sprint', 1991)
c3=Car.new('sprint', 1992)
c4=Car.new('sprint', 1993)
c5=Car.new('sprint', 1994)
c6=Car.new('sprint', 1995)
c7=Car.new('sprint', 1996)
c8=Car.new('sprint', 1997)
c9=Car.new('sprint', 1998)
c10=Car.new('sprint', 1999)
puts Car.cantidad