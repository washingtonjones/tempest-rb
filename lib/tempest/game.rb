require 'gosu'
require_relative 'player'
require_relative 'zorder'
require_relative 'star'

class Game < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "This is a test"

    @background_image = Gosu::Image.new('lib/assets/images/space.png', tileable: true)

    @player = Player.new
    @player.warp(320, 420)

    @star_anim = Gosu::Image.load_tiles("lib/assets/images/star.png", 25, 25)
    @stars = Array.new

    @font = Gosu::Font.new(20)
  end

  def update
    if rand(100) < 4 and @stars.size < 25
      @stars.push(Star.new(@star_anim))
    end
  end

  def draw
    @player.draw
    @background_image.draw(0, 0, ZOrder::BACKGROUND)
    @stars.each { |star| star.draw }
    @font.draw_text("Score: #{@player.score}", 10, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
  end

  def button_down(button)
    case button
    when Gosu::KB_ESCAPE then close
    when Gosu::KB_LEFT then @player.turn_left
    when Gosu::KB_RIGHT then @player.turn_right
    else super
    end
  end
end