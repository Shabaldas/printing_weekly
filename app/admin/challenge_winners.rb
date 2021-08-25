ActiveAdmin.register ChallengeWinner do
  permit_params :challenge_id, :challenge_member_id, :place, :winning_date

  form partial: 'form'
  # form do |f|
  #   f.semantic_errors
  #   f.input :challenge_id
  #   f.input :challenge_member_id
  #   f.input :place
  #   f.input :winning_date, as: :datepicker,
  #                       datepicker_options: {
  #                         min_date: "2021-01-01",
  #                         max_date: "+3D"
  #                       }
  #   f.actions  
  
  #   # f.input :ends_at, as: :datepicker,
  #   #                   datepicker_options: {
  #   #                     min_date: 3.days.ago.to_date,
  #   #                     max_date: "+1W +5D"
  #   #                   }
  # end
end
