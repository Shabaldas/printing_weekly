class ChallengeWinner < ApplicationRecord
  belongs_to :challenge
  belongs_to :challenge_member
end