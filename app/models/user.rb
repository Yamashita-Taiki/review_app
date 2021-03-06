class User < ApplicationRecord
  has_many :posts
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },uniqueness: true
  before_save { self.email = email.downcase }
  validates :image_file, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

  def my_posts
    return Post.where(user_id: self.id)
  end
                      
end
