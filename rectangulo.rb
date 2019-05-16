module Formula
  def perimetro
      if @lado
          perimetro = 4*@lado
          #calcula perimetro de un cuadrado
          "el perimetro de un cuadrado es #{perimetro}"
      else
          perimetro = 2*@largo + 2*@ancho
          #calcula el perimetro de un rectangulo
          "el perimetro de un rectangulo es #{perimetro}"
      end
   end
  def area
    if @lado
        area = @lado*@lado
        #calcula el area de un cuadrado
        "el area de un cuadrado es #{area}"
    else
        area =@largo*@ancho
        #calcula el area de un rectangulo
        "el area de un rectangulo es #{area}"
    end
  end
end


class Rectangulo
  include Formula
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    "El rectangulo tiene una medida de #{@largo} de largo y #{@ancho} de ancho"
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end
  def lados
    "El cuadrado tiene una medida de #{@lado} en cada lado."
  end
end
rectangulo = Rectangulo.new(4,5)
cuadrado = Cuadrado.new(6)

puts rectangulo.lados
puts rectangulo.perimetro
puts rectangulo.area
puts cuadrado.lados
puts cuadrado.perimetro
puts cuadrado.area
