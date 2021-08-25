class User < ApplicationRecord
  has_one :challenge_member
  
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  # enum role: %i[customer admin ]
  enum role: { admin: 0, adjudicator: 1, challenge_member: 2 }
end