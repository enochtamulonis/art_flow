class AddContactInfoEmailToSiteDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :site_details, :contact_info_email, :string
  end
end
