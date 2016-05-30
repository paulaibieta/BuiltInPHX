class Startup < ActiveRecord::Base

  scope :approved, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }

end
