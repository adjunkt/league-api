class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :default, -> { where(deleted: false) }
end
