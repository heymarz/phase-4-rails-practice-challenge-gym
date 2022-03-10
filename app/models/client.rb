class Client < ApplicationRecord
  has_one :gym
  has_many :memberships
end
