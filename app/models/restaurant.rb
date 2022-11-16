class Restaurant < ApplicationRecord
  CATEGORIES = %w[ chinese italian japanese french belgian ]

  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates_associated :reviews
end
