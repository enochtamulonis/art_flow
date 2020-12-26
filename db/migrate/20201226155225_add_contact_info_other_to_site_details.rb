class AddContactInfoOtherToSiteDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :site_details, :contact_info_other, :text
  end
end
