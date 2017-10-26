class Student
attr_accessor :name, :grade

  def initialize(name, grade)
    @name=name
    @grade=grade
  end

  def self.create_table
  sql = <<-SQL
        CREATE TABLE students
        (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)
        SQL
  DB[:conn].execute(sql)
  end

  def save
    DB[:conn].execute("INSERT INTO students VALUES (?,?,?)", id, self.name, self.grade)

  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
