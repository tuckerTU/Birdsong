class User < ActiveRecord::Base
    has_many :reviews
    has_many :albums, through: :reviews
    has_many :friends
    has_secure_password
    validates :password, length: {in: 6..100}, confirmation: true
    validates :username, uniqueness: true
    validates :email, presence: true, uniqueness: true, format:  {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
end
