# frozen_string_literal: true

require_relative "unit_st/version"

module UnitSt
  class Error < StandardError; end
  def create_player(first_name, last_name, height_feet, height_inches, position, team_id, weight_pounds)
    CreatePlayer.new(first_name, last_name, height_feet, height_inches, position, team_id, weight_pounds).call
    end
end
