class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  after_create :update_restaurant_rating

  private

  def update_restaurant_rating
    restaurant.update(rating: restaurant.reviews.average(:rating).to_f)
  end

end
