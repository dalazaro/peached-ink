require 'carrierwave'

class Collection < ApplicationRecord
  belongs_to :user

  mount_uploader :illustration01, IllustrationUploader
  mount_uploader :illustration02, IllustrationUploader
  mount_uploader :illustration03, IllustrationUploader
  mount_uploader :illustration04, IllustrationUploader
  mount_uploader :illustration05, IllustrationUploader
  mount_uploader :illustration06, IllustrationUploader
  mount_uploader :illustration07, IllustrationUploader
  mount_uploader :illustration08, IllustrationUploader
  mount_uploader :illustration09, IllustrationUploader
  mount_uploader :illustration10, IllustrationUploader

  extend FriendlyId
  friendly_id :name
end
