class AddFieldToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :approved, :boolean
  end
end
