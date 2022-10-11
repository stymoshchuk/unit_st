# frozen_string_literal: true
require_relative "unit_st/create_player"
require_relative "unit_st/update_player"
require_relative "unit_st/version"
require "httparty"

module UnitSt
  class Error < StandardError; end
  def create_player(first_name, last_name, height_feet, height_inches, position, team_id, weight_pounds)
    CreatePlayer.new(first_name, last_name, height_feet, height_inches, position, team_id, weight_pounds).call
  end

  def update_player_info(id, first_name=nil , last_name=nil, height_feet=nil,
                         height_inches=nil , position=nil, team_id=nil, weight_pounds=nil)
    UpdatePlayer.new(id, first_name, last_name, height_feet, height_inches, position, team_id, weight_pounds).call
  end
end


