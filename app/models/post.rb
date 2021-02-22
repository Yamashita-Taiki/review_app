class Post < ApplicationRecord
   belongs_to :user
   mount_uploader :picture, PictureUploader
   validates :user_id, {presence: true}
   validates :title, {presence: true}
   validates :content, presence: true, length: { maximum: 500 }
   validates :picture, {presence: true}
   has_one_attached :image

   def user
      return User.find_by(id: self.user_id)
    end
    
end
