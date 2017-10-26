class Student
attr_accesor :name, :grade

  def initialize(name, grade)
    @name=name
    @grade=grade
  end

  def save

    
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
