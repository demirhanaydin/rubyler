class User < ActiveRecord::Base
  
  has_many :posts
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable and :timeoutable, :registerable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :fullname, :email, :password, :password_confirmation, :remember_me
end
