class Challenge < ApplicationRecord
  has_many :challenge_members
  # has_many :challenge_winners, through: :challenge_members

  enum status: { upcoming: 0, current: 1, finished: 2, arhived: 4 }
end