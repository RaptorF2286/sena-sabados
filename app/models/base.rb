module Storage
  class Base
    def save
      file_path = File.join(APP_ROOT, 'db', 'students.txt')
      File.write(file_path, 
        "#{nombre}, #{programa}, #{fecha_nacimiento}, #{correo}", 
        mode: 'a')


    end

    def self.all
      file.map { |item| new(*item) }
    end

    def self.file
      File.open(file_path).map { |line| line.split(',') }
    end

    def self.file_path
      File.join(APP_ROOT, 'db', "#{table_name}.txt")
    end

    def self.table_name
      raise 'NotImplementedError'
    end

  end
end
