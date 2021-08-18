class ChallengeMember < ApplicationRecord
  belongs_to :challenge
  belongs_to :user

  # has_many :challenge_winners, through: :challenge
end