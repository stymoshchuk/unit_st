
require 'httparty'

class UpdatePlayer

  include HTTParty
  base_uri "https://balldontlie.io/api/v1"

  attr_reader :id, :first_name, :last_name, :height_feet, :height_inches, :position, :team_id, :weight_pounds

  def initialize(id, first_name=nil, last_name=nil, height_feet=nil,
                 height_inches=nil , position=nil, team_id=nil, weight_pounds=nil)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @height_feet = height_feet
    @height_inches = height_inches
    @position = position
    @team_id = team_id
    @weight_pounds = weight_pounds
  end

  def call
    args = {
      id: id,
      first_name: first_name,
      last_name: last_name,
      height_feet: height_feet,
      height_inches: height_inches,
      position: position,
      team_id: team_id,
      weight_pounds: weight_pounds
    }
    self.class.patch("/players/#{args[:id]}", :body => args, :headers => { 'Content-Type' => 'application/json' })
  end
end
