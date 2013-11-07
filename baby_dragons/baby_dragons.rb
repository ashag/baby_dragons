class Dragons
  attr_accessor :first_name, :color 
  attr_reader :full_name, :current_location

  def initialize(name, color)
    @first_name = name.capitalize
    @full_name = 
    @color = color
    @likes = ["strawberries", "apples", "nectarines"]
    @dislikes = ["cake", "cookies", "ice cream"]
    @current_location = "home"


    family_name(name, color)
  end

  def family_name(name, color)
    family = {"Stark" => "black", "Targaryen" => "red", "Lannister" => "crimson"}
    
    if family.has_value?(color)
      a = family.key(color)
      @full_name = first_name + " " + a 
    end
    puts "You dragon's full name is #{full_name}"
    ask_for_next_move
  end

  def ask_for_next_move
    puts "What do you want to do with your dragon now? You can walk or feed #{first_name}"
    command = gets.chomp

    action(command)
  end

  def action(command)
    if command == "feed"
      puts "What would you like to feed your dragon"
      food = gets.chomp
      feed(food)

    elsif command == "walk"
      puts "Where do you want to walk your dragon?"
      place = gets.chomp

      @current_location = Location.new(first_name, place)
    end
  end

  def feed(food)
    if @likes.include? food 
      puts "Yum! #{first_name} likes #{food}."
    end

    if @dislikes.include? food
      puts "Yuck! #{first_name} dislikes eating #{food}"
    end

    unless (@likes || @dislikes).include? food
      puts "#{first_name} does not eat that"
    end
  end

  class Location
    attr_accessor :place_name

    def initialize(first_name, place)
      @place_name = place
      puts "You walked #{first_name} to the #{place}"
    end
  end
end




  






