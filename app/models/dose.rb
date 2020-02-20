class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, length: { minimum: 1 }
  validates :cocktail, uniqueness: { scope: [:ingredient, :cocktail] }
end
