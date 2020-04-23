class Student < ApplicationRecord
  belongs_to :major
  belongs_to :stage
  has_many :report_ramadhans
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
