class League < ApplicationRecord
  validates :name, presence: true

  belongs_to :organization
  belongs_to :sport
end
