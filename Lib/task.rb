class Task

  @@all_tasks =[] #declares a class variable 'all_tasks' as an empty array

  define_method(:initialize) do |description| #creates the new class 'Task'
    @description = description #creates instance variable 'description'
  end

  define_method(:description) do #creates a method for the variable 'description'. The method outputs the content of the variable.
    @description
  end

  define_singleton_method(:all) do #creates class method .all. Which returns the content of the class variable 'all_tasks'.
    @@all_tasks
  end

  define_method(:save) do #creates a method to take the user input and pushes it into the 'all_tasks' array.
    @@all_tasks.push(self)
  end

  define_singleton_method(:clear) do #creates a class method to clear all data from the 'all_tasks' array.
    @@all_tasks = []
  end
end
