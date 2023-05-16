class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances

  #validates_comparison_of :start_date, greater_than: :Date.today, presence: true
  validates :duration, presence: true, numericality: {divisible_by: 5}
  validates :title, presence: true, length: {minimum: 5, maximum: 140}
  validates :description, presence: true, length: {minimum: 20, maximum: 1000}
  validates_comparison_of :price, presence: true, greater_than_or_equal_to: 1
  validates :location, presence: true
end
