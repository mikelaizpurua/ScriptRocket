class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :links, dependent: :destroy
  has_many :scripts

  has_one :profile, dependent: :destroy
  after_create :create_profile

end
