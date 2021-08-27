class ChallengeMembersController < ApplicationController
  def new
    @challenge_member = ChallengeMember.new
  end

  def create
    @challenge_member = ChallengeMember.new(challenge_member_params.merge(user: current_user, challenge: Challenge.where(status: 'current').first))
    if @challenge_member.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def challenge_member_params
    params.require(:challenge_member).permit(:user_id, :nick_name, uploads: [])
  end
end