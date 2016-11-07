class User < ApplicationRecord

  has_secure_password

  has_many :forms

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :username,  :presence => true,
                        :length => { :within => 8..25 },
                        :uniqueness => true
  validates :password,  :presence => true,
                        :length => { :within => 8..25 }
  validates :email,     :presence => true,
                        :length => { :maximum => 100 },
                        :format => EMAIL_REGEX,
                        :confirmation => true
end
