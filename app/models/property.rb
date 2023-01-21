class Property < ApplicationRecord
    has_one_attached :photo do |attachable|
      attachable.variant :thumb, resize_to_limit: [500, 200]
    end
    # mount_uploader :photo, PhotoUploader
    # belongs_to :account
    scope :latest, -> { order created_at: :desc}
end
