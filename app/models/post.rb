class Post < ApplicationRecord
  RESIZE_DIMENSIONS=[1000, 1000]
  enum :status, [:cropping, :applying_filter, :final_draft, :published]

  belongs_to :user
  has_one_attached :photo
end
