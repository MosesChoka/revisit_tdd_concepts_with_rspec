class Page < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true
  validates :summary, presence: true
  validates :content, presence: true
  validates :published, inclusion: { in: [ true, false ] }
end
