class User < ApplicationRecord
  has_one :challenge_member
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize: "100x100"
  end
  
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  # enum role: %i[customer admin ]
  enum role: { admin: 0, adjudicator: 1, challenge_member: 2 }
end