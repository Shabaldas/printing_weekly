class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  enum role: %i[customer admin]
end