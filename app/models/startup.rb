class Startup < ActiveRecord::Base
  has_attached_file :company_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :company_image, content_type: /\Aimage\/.*\Z/

  scope :approved, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }

end
