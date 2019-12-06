class AddDescriptionsToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :description, :text
  end
end
