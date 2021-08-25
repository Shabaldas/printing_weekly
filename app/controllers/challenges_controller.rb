class ChallengesController < ApplicationController

  def index
  end
  
  def show
    @set_current_challange = Challenge.find_by(id: params[:id])
    @challenge_members = @set_current_challange.challenge_members
  end
end
