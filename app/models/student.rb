class Student
  attr_accessor :nombre, :programa, :fecha_nacimiento, :correo

  def initialize(nombre, programa, fecha_nacimiento, correo)
    self.nombre = nombre
    self.programa = programa 
    self.fecha_nacimiento = fecha_nacimiento 
    self.correo = correo 
  end

  def self.all
    [
      new('Pepito', 'Confeccion', '02/24/1990', 'pepito@example.com'),
      new('Usuario 1', 'Programa 1', '01/01/1901', 'usuario1@example.com'),
      new('Usuario 2', 'Programa 2', '02/02/1902', 'usuario2@example.com'),
      new('Usuario 3', 'Programa 3', '03/03/1903', 'usuario3@example.com'),
      new('Usuario 4', 'Programa 4', '04/04/1904', 'usuario4@example.com'),
      new('Usuario 5', 'Programa 5', '05/05/1905', 'usuario5@example.com'),
      new('Usuario 6', 'Programa 6', '06/06/1906', 'usuario6@example.com'),
      new('Usuario 7', 'Programa 7', '07/07/1907', 'usuario7@example.com'),
      new('Usuario 8', 'Programa 8', '08/08/1908', 'usuario8@example.com'),
      new('Usuario 9', 'Programa 9', '09/09/1909', 'usuario9@example.com'),
      new('Usuario 10', 'Programa 10', '10/01/1910', 'usuario10@example.com'),
      new('Usuario 11', 'Programa 11', '11/01/1911', 'usuario11@example.com'),
    ]
  end

end
