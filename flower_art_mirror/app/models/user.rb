class User < ActiveRecord::Base

  has_many :posts
  has_many :comments
  
  has_secure_password validations: false

  has_attached_file :photo

  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 5}
end