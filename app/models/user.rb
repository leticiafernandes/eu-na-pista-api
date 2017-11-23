class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :events, dependent: :delete_all

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
