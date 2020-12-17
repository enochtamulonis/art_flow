class Painting < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3 }
  has_many_attached :images
  has_many :order_items

  def thumbnail input
    return self.images[input].variant(resize_to_fill: [500, 330, { gravity: 'Center' }]).processed
  end
end
