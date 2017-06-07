class Photo < ApplicationRecord

  ##validation below

    validates :user_id, :presence => true

  ##associations below


  belongs_to :user, :class_name => "Photo", :foreign_key => "user_id"
  has_many :comments
  has_many :likes
  has_many :fans, :through => :likes, :source => :user

end
