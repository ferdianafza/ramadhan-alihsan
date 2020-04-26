class Student < ApplicationRecord
  has_one_attached :avatar
  belongs_to :major
  has_many :report_ramadhans, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
