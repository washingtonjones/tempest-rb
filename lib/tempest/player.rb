require_relative 'positions'

class Player
  def initialize
    @image = Gosu::Image.new("lib/assets/images/starfighter.bmp")
    @beep =  Gosu::Sample.new("lib/assets/sounds/beep.wav")
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @score = 0
    @player_positions = Positions::POSITIONS
    @current_player_position = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end
  
  def turn_left
    @angle += 45.0
    get_next_position
    warp(get_x_position, get_y_position)
  end
  
  def turn_right
    @angle -= 45.0
    get_prev_position
    warp(get_x_position, get_y_position)
  end

  def get_next_position
    if @current_player_position < 7
      @current_player_position +=1
    else
      @current_player_position = 0
    end
  end

  def get_prev_position
    if @current_player_position > 0
      @current_player_position -= 1
    else
      @current_player_position = 7
    end
  end

  def get_x_position
    @player_positions[@current_player_position][:x]
  end

  def get_y_position
    @player_positions[@current_player_position][:y]
  end

  def score
    @score
  end

  def collect_stars(stars)
    stars.reject! do |star|
      if Gosu.distance(@x, @y, star.x, star.y) < 35
        @score += 10
        @beep.play
        true
      else
        false
      end
    end
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end