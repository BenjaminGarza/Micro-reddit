class User < ApplicationRecord
    has_many :posts
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 30 },
                     uniqueness: { case_sensitive: false }
    validates :email, presence: true, length: { maximum: 255 },
                     uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
end
