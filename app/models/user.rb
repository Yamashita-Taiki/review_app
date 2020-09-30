class User < ApplicationRecord
  has_many :posts
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  before_save { self.email = email.downcase }
  
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },uniqueness: true
  validates :image_file, presence: true

  def my_posts
    return Post.where(user_id: self.id)
  end
                      
end
