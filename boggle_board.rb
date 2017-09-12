class BoggleBoard
  def initialize
    #How to describe it
    #Creating an array of 16 underscores
    @grid = Array.new(16, "_")

  end

  def shake!
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    #a new string for the output
    output_string = String.new
    #making a variable to mess with so I don't screw up my instance variable
    letter_array = @grid
    #how so i put them in 4 lines tho?
    4.times do
      output_string << letter_array.shift(4).join(" ") + "\n"
    end

    #print the output
    output_string
  end
end
puts BoggleBoard.new.to_s
