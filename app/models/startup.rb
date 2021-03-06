class Startup < ActiveRecord::Base
  has_attached_file :company_image, styles: { full: "700x300", medium: "400x250", thumb: "100x100#" }
  validates_attachment_content_type :company_image, content_type: /\Aimage\/.*\Z/

  scope :approved, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }

end
