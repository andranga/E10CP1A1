module Test 
  def result(nota1, nota2)
  	prom = (nota1.to_i + nota2.to_i)/2.0
  	if prom >= 4.0
  		puts 'Estudiante aprobado'
  	else
  		puts 'Estudiante reprobado'
  	end
  end
end

module Attendance 
  def student_quantity
  	puts Student.quantity
  end
end

class Student
  @@quantity=0
  attr_accessor :nombre, :nota1, :nota2
  def initialize(nombre, nota1=4, nota2=4)
    @nombre = nombre
    @nota1 = nota1.to_i
    @nota2 = nota2.to_i
    @@quantity += 1
  end

  def self.quantity
  	@@quantity
  end
  
  include Test

  include Attendance
end

e1= Student.new('Andres1', 1.0, 2.0)
puts e1.result(e1.nota1, e1.nota2), e1.nota1, e1.nota2
e2= Student.new('Andres2', 2.0, 3.0)
puts e2.result(e2.nota1, e2.nota2), e2.nota1, e2.nota2
e3= Student.new('Andres3', 3.0, 4.0)
puts e3.result(e3.nota1, e3.nota2), e3.nota1, e3.nota2
e4= Student.new('Andres4', 4.0, 5.0)
puts e4.result(e4.nota1, e4.nota2), e4.nota1, e4.nota2
e5= Student.new('Andres5', 5.0, 6.0)
puts e5.result(e5.nota1, e5.nota2), e5.nota1, e5.nota2
e6= Student.new('Andres6', 6.0, 7.0)
puts e6.result(e6.nota1, e6.nota2), e6.nota1, e6.nota2
e7= Student.new('Andres7', 7.0, 1.0)
puts e7.result(e7.nota1, e7.nota2), e7.nota1, e7.nota2
e8= Student.new('Andres8', 1.0, 2.0)
puts e8.result(e8.nota1, e8.nota2), e8.nota1, e8.nota2
e9= Student.new('Andres9', 2.0, 3.0)
puts e9.result(e9.nota1, e9.nota2), e9.nota1, e9.nota2
e10= Student.new('Andres10', 3.0, 4.0)
puts e10.result(e10.nota1, e10.nota2), e10.nota1, e10.nota2

puts e1.class.quantity

