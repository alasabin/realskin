class Product < ActiveRecord::Base

  has_many :images, dependent: :destroy
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  P_CATEGORIES = ["Women", "Men", "Girls", "Boys", "Unisex"]
  P_TITLES = ["Sheepskin", "Lambskin", "Coat", "Jacket", "Cap", "Mitten", "Acessories"]
  P_SIZES = ["X", "L", "M", "XL"]
  P_BRANDS = ["Murat", "Victoria"]
  P_COUNTRIES = ["Turkey"]
  P_COLORS = ["Black", "White"]
  P_MATERIALS = ["Leather", "Fur", "Faux Leather"]

  validates :name, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates_inclusion_of :category, :in => P_CATEGORIES
  validates_inclusion_of :title, :in => P_TITLES
  validates_inclusion_of :size, :in => P_SIZES
  validates_inclusion_of :brand, :in => P_BRANDS
  validates_inclusion_of :country, :in => P_COUNTRIES
  validates_inclusion_of :color, :in => P_COLORS
  validates_inclusion_of :material, :in => P_MATERIALS

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      true
    else
      false
    end
  end
end
