class User < ApplicationRecord
    has_secure_password
    validates :email, :username, presence: true, uniqueness: true
    has_many :articles
    has_many :historicals
    has_one :usertag
end
