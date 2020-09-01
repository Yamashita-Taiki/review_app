class Post < ApplicationRecord
   # mount_uploader :picture, PictureUploader
   validates :content, presence: true, length: { maximum: 500 }
   validates :user_id, {presence: true}
   has_one_attached :image

   def user
      return User.find_by(id: self.user_id)
    end
    
end
