ActiveAdmin.register Instaphoto do
  menu priority: 2
  
  permit_params :url, :image

  form partial: 'form'

  index do
    selectable_column
    id_column
    column :url
    column :image_title
    actions
  end

  index as: :grid, default: true do |product|
    ap product
    link_to image_tag(product.image.variant(resize: '100x100'))
    # , admin_product_path(product)
  end

  show do |instaphoto|
    attributes_table do
      row :url
      row :image do
        image_tag instaphoto.image.variant(resize: '100x100') if instaphoto.image.attached?
      end
    end
  end
end