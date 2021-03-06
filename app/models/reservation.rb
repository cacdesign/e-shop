class Reservation < ApplicationRecord
  belongs_to :property
  belongs_to :cart

  validates :property_id,
  presence: true,
  uniqueness: {message:"Cette propriété est déjà dans votre panier!"}

end
