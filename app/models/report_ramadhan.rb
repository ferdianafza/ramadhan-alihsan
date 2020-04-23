class ReportRamadhan < ApplicationRecord
  belongs_to :student

  validates :puasa ,:tadarus, :tarawih, :subuh, :dzuhur,:ashar ,:magrib,
              :isya, presence: true
end
