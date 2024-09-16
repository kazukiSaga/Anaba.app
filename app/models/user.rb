# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :assessments
  has_many :spots
  has_many :comments
  has_many :user_tags

  #validates :name, presence: true,length: { maximum: 13 }
  validates :email, presence: true, uniqueness: true, length: { in: 6..255 } 
end
