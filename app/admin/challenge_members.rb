ActiveAdmin.register ChallengeMember do
  permit_params :challenge_id, :user_id, :nick_name
end
