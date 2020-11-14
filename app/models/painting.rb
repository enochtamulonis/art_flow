class Painting < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3 }
  has_many_attached :images

  def thumbnail input
    return self.images[input].variant(resize_to_fill: [500, 300, { gravity: 'Center' }]).processed
  end
end
