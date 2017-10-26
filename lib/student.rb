class Student
attr_accessor :name, :grade
attr_reader :id


  @@all = []

  def initialize(name, grade, id=nil)
    @name=name
    @grade=grade
    @id = Student.all_students.length+1
    @@all<<self

  end

  def self.all_students
    @@all
  end

  def self.create_table
  sql = <<-SQL
        CREATE TABLE IF NOT EXISTS students
        (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)
        SQL
  DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
        DROP TABLE students
        SQL
    DB[:conn].execute(sql)
  end

  def save
    id = DB[:conn].execute("SELECT * FROM students").length + 1
    DB[:conn].execute("INSERT INTO students VALUES (?,?,?)", id, self.name, self.grade)

  end

  def create(input_hash)


  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
