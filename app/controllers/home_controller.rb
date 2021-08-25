class HomeController < ApplicationController
  def home
    @current_challenge = Challenge.where(status: 1).first
    @previos_challenges = Challenge.where(status: 2).limit(5)
  end
end
