class User < ApplicationRecord
    ##Need to add validations for password and email.
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :photos
    has_many :favorites
    has_many :comments, through: :photos


end
