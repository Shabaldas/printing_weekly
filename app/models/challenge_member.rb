class ChallengeMember < ApplicationRecord
  has_many_attached :uploads
  belongs_to :challenge
  belongs_to :user

  enum approve: { no: 0, yes: 1 }

  validates :nick_name, :approve, presence: true
  validates :uploads,
            attached: true,
            content_type: ['image/png', 'image/jpg', 'image/jpeg'],
            limit: { min: 1, max: 3 }

  scope :active_members, -> { where(approve: :yes) }
  scope :not_active_members, -> { where(approve: :no) }
end