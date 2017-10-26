class Student
attr_accesor :name, :grade

  def initialize(name, grade)
    @name=name
    @grade=grade
  end

  def save
    DB[:conn].execute("INSERT INTO students VALUES (?,?,?)", id, self.name, self.grade)
    
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
