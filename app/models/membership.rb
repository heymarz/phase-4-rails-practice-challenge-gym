class Membership < ApplicationRecord
  belongs_to :gym, dependent: :destroy
  belongs_to :client

  validates :membership, uniqueness: true
end
