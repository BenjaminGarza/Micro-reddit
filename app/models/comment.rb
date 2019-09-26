class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :text, presence: true
    validates :post_id, presence: true
    validates :user_id, presence: true
end
