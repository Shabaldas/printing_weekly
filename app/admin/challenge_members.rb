ActiveAdmin.register ChallengeMember do
  actions :index, :new, :show, :create, :edit, :update, :destroy

  permit_params :challenge_id, :user_id, :nick_name, :link_to_instagram, :approve, uploads: []

  form partial: 'form'

  index do
    selectable_column
    id_column
    column :challenge
    column :user
    column :nick_name
    column :aproove
    column :updated_at
    actions defaults: true
  end

  show do |item|
    attributes_table do
      row :id
      row :challenge
      row :user
      row :nick_name
      row :approve do
        item.approve.upcase
      end
      row :link_to_instagram
      row :uploads do |m|
        m.uploads.each do |img|
          span do
            image_tag(img) 
            image_tag url_for(img), size: "200x200"
          end
        end
      end
    end
  end
end
