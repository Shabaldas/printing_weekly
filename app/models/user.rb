class User < ApplicationRecord
  has_one :challenge_member
  
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  enum role: %i[customer admin]
end