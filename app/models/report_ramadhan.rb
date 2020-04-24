class ReportRamadhan < ApplicationRecord
  belongs_to :student
  has_many_attached :files

  # validates :puasa ,:tadarus, :tarawih, :subuh, :dzuhur,:ashar ,:magrib,
  #             :isya, presence: true
  validates :puasa ,:tadarus, :tarawih, :subuh, :dzuhur,:ashar ,:magrib,
                         :isya, :tanggal, :files, presence: true

  validates :files, presence: true, blob: { content_type: :image }

end
