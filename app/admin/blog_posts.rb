ActiveAdmin.register BlogPost do
  menu priority: 2
  
  permit_params :title, :subtitle, :price_per_person, :content_url, :publisher, :published_at
end
