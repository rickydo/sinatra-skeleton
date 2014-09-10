class User < ActiveRecord::Base

  validates :name, :length => { :minimum => 3, :message => "You shall not pass if name is less than 4 characters!" }
  validates :email, presence: true, :uniqueness => true, format: {with: /\S{4,}@\S{3,}\.\S{2,}/}

  has_secure_password
end
