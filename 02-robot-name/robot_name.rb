class Robot

  attr_accessor :name

  def name
    if @name == nil
      self.assign_name
    end
    return @name
  end

  def set_name=(name)
    @name = name
  end

  def generate_name # Generates the names for the robots
    first_letter = ('A'..'Z').to_a.sample(2)
    second_number = (0..9).to_a.sample(3)
    robot_name = (first_letter + second_number).join
    return robot_name
  end

  # Assigns a name to the robot
  def assign_name
    self.set_name = generate_name
  end

  def reset
    self.set_name = nil
  end

end
  
# Creating 3 new robots
first_robot = Robot.new
second_robot = Robot.new
third_robot = Robot.new

puts first_robot.name
puts second_robot.name
puts third_robot.name

puts first_robot.assign_name
puts second_robot.assign_name
puts third_robot.assign_name

puts first_robot.name
puts second_robot.name
puts third_robot.name

puts first_robot.reset
puts second_robot.reset
puts third_robot.reset

puts first_robot.name
puts second_robot.name
puts third_robot.name

puts first_robot.assign_name
puts second_robot.assign_name
puts third_robot.assign_name

puts first_robot.name
puts second_robot.name
puts third_robot.name

puts first_robot.reset
puts second_robot.reset
puts third_robot.reset

