class Comment < ApplicationRecord

  ##validation below

  validates :user_id, :presence => true
  validates :photo_id, :presence => true
  validates :body, :presence => true

  ##associations below

  belongs_to :photo
  belongs_to :user
end
