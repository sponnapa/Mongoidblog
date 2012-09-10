class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  validates_uniqueness_of  :email, :case_insensitive =>false
  attr_accessible  :email, :password, :password_confirmation
end
