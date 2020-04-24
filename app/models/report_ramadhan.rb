class ReportRamadhan < ApplicationRecord
  belongs_to :student
  has_one_attached :file

  # validates :puasa ,:tadarus, :tarawih, :subuh, :dzuhur,:ashar ,:magrib,
  #             :isya, presence: true
  validates_presence_of :puasa ,:tadarus, :tarawih, :subuh, :dzuhur,:ashar ,:magrib,
                         :isya, :tanggal
end
