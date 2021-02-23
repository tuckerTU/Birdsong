class User < ActiveRecord::Base

    has_many :reviews
    has_many :albums, through: :reviews
    has_many :friends
    has_secure_password
    validates :password, length: {in: 6..100}, confirmation: true
    validates :username, uniqueness: true

end
