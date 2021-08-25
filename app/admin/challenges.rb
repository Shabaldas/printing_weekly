ActiveAdmin.register Challenge do
  permit_params :title, :description, :link, :status, :money_prize
end
