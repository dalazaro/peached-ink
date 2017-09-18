class Collection < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :name
end
