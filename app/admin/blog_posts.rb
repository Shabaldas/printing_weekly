ActiveAdmin.register BlogPost do
  menu priority: 2
  
  permit_params :title, :subtitle, :state, :content, :publisher, :published_at
end
