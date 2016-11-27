class Post < ActiveRecord::Base
  include Voteable

  belongs_to :user

  has_many :comments
  has_many :categories_posts
  has_many :categories, through: :categories_posts
  has_many :votes, as: :voteable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
end
#Skinny controller, fat model