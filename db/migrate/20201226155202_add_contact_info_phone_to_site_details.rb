class AddContactInfoPhoneToSiteDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :site_details, :contact_info_phone, :string
  end
end
