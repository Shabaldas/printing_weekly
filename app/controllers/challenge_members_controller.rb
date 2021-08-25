class ChallengeMembersController < ApplicationController
  def new
    ap params.to_unsafe_h
    @challenge_member = ChallengeMember.new
  end

  def create
    @challenge_member = ChallengeMember.new(user: current_user, challenge: Challenge.first)
    if @challenge_member.save!
      redirect_to root_path
    else
      render :new
    end
  end
end