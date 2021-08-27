ActiveAdmin.register Challenge do
  permit_params :title, :description, :link, :status, :members_count, :money_prize, :val, :type_of_print, :created_at

  actions :index, :new, :show, :create, :edit, :update, :destroy

  form partial: 'form'
  
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :members_count
    column :active_challenge_members do |challenge|
      challenge.challenge_members.active_members.count
    end
    column :not_approve_challenge_members do |challenge|
      challenge.challenge_members.not_active_members.count
    end
    column :link
    column :money_prize do |challenge|
      number_to_currency(challenge.money_prize)
    end
    column :status do |challenge|
      challenge.status.upcase
    end
    column :val do |challenge|
      challenge.val.upcase
    end
    column :type_of_print do |challenge|
      challenge.type_of_print.upcase
    end
    column :created_at
    actions defaults: true
  end

  show as: :grid do |item|
    attributes_table do
      row :id
      row :description
      row :max_members_count do
        item.members_count
      end
      row :active_members_count do
        item.challenge_members.active_members.count
      end
      row :not_approve_challenge_members_count do
        item.challenge_members.not_active_members.count
      end
      row :link
      row :status do 
        item.status.upcase
      end
      row :val do 
        item.val.upcase
      end
      row :type_of_print do 
        item.type_of_print.upcase
      end
      row :money_prize do
        number_to_currency(item.money_prize)
      end
      row :created_at
    end
  end
end
