class Dragons
  attr_accessor :first_name, :color, :full_name, :likes, :dislikes, :current_location

  def initialize(name, color)
    @first_name = name.capitalize
    @full_name = 
    @color = color
    @likes = ["strawberries", "apples", "nectarines"]
    @dislikes = ["cake", "cookies", "ice cream"]
    @current_location = "home"


    family_name(@name, @color)
  end

  def family_name(name, color)
    family = {"Stark" => "black", "Targaryen" => "red", "Lannister" => "crimson"}
    
    if family.has_value?(color)
      a = family.key(color)
      @full_name = name + " " + a 
    end
  end

  def action(command)
    if command == "feed"
      puts "What would you like to feed your dragon"
      food = gets.chomp
      feed(food)

    elsif command == "walk"
      puts "Where do you want to walk your dragon?"
      place = gets.chomp

      @current_location << Location.new(place)
    end
  end

  def feed(food)
    if @likes.include? food 
      puts "Yum! #{name} likes #{food}."
    end

    if @dislikes.include? food
      puts "Yuck! #{name} dislikes eating #{food}"
    end

    if {!@likes || !@dislikes}.include? food

  end
end


class Location
  attr_accessor :place_name

  def initialize(place)
    @place_name = place
    puts "You walked your #{@name} to #{place}"
  end
end

  






