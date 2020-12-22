class CreateSiteDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :site_details do |t|

      t.timestamps
    end
  end
end
