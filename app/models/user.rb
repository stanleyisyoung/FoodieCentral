class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #if user deleted, so are all related reviews
  has_many :reviews, dependent: :destroy
  
  validates :first_name, :last_name, presence: true
end
