ActiveAdmin.register ChallengeWinner do
  permit_params :challenge_id, :challenge_member_id, :place, :winning_date
end
