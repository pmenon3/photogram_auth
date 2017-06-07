class Like < ApplicationRecord

  ##validation below

  validates :user_id, :presence => true, :uniqueness => { :scope => :photo_id }

    validates :photo_id, :presence => true

  ##associations below
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"

end
