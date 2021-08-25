ActiveAdmin.register ChallengeMember do
  actions :index, :new, :show, :create, :edit, :update

  permit_params :challenge_id, :user_id, :nick_name

  form partial: 'form'
end
