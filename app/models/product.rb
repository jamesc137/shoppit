class Product < ApplicationRecord
  belongs_to :shop
  attr_accessor   :colors_raw

  def colors_raw
    self.colors.join("\n") unless self.colors.nil?
  end

  def colors_raw=(values)
    self.colors = []
    self.colors=values.split("\n")
  end

  def sizes_raw
    self.sizes.join("\n") unless self.sizes.nil?
  end

  def sizes_raw=(values)
    self.sizes = []
    self.sizes=values.split("\n")
  end

end
