class Alumno
  attr_reader :nombre, :notas
  def initialize(nombre, *notas)
    @nombre = nombre
    @notas = notas.map(&:to_i)
    end
  
  def coleccion             # metodo de instancia, Alumno.new.coleccion, join junta y saca los []
      puts "el alumno #{self.nombre} tiene las siguientes notas #{self.notas.join(', ')}"
      end
  
  
  def self.read_file(filename = 'notas.txt')  # llama al archivo y lo guarda en data
    data = []
    file = File.open(filename, 'r')
    data = file.readlines
    file.close
    
    alumnos = []
    data.each do |line|
    alumnos.push(Alumno.new(*line.split(',')).coleccion) # guarda el nombre y las notas en alumnos instanciando en colection
    end
    #alumnos
    puts alumnos
end
end
    Alumno.read_file

# terminado
