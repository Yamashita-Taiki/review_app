class Post < ApplicationRecord
   validates :content, presence: true, length: { maximum: 500 }
   validates :user_id, {presence: true}
end
