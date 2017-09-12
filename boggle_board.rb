class BoggleBoard
  def initialize
    #How to describe it
    #Creating an array of 16 underscores
    @grid = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
  end

  def shake!
    # #take spaces
    # output_string = String.new
    # #REPLACE them with random letters (create a variable for this)
    # alphabet_to_mess_up = @alphabet
    # #spit it into our board
    # 4.times do
    #   output_string << alphabet_to_mess_up.sort_by {rand}.shift(4).join(" ") + ("\n")
    # end
    # #call the shake! method BoggleBoard class
    #  puts output_string
    # #could use MAP
    @grid.map! do |space|
      space = @alphabet.shuffle.take(1)
    end
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
    puts output_string
  end
end
game = BoggleBoard.new
# puts game.to_s
puts game.shake!
