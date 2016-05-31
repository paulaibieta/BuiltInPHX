class AddAttachmentCompanyImageToStartups < ActiveRecord::Migration
  def self.up
    change_table :startups do |t|
      t.attachment :company_image
    end
  end

  def self.down
    remove_attachment :startups, :company_image
  end
end
