class Organization < ApplicationRecord
  validates :name, presence: true
  validates :identifier, presence: true

  has_and_belongs_to_many :sports
end
