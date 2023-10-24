class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :products, through: :reviews

    validates :username, presence: true, uniqueness: true

    def has_more_reviews(num)
        self.reviews.length > num
    end
end
