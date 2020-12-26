class SiteDetail < ApplicationRecord
  serialize :contact_info,Array
  has_rich_text :content
end
