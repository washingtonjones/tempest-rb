require_relative "tempest/version"
require_relative "tempest/game"

module Tempest
  def self.main(arg)
    Game.new.show
  end
end
