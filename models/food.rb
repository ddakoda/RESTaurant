class Food < ActiveRecord::Base
  has_many(:orders)
  has_many(:parties, through: :orders)

  # def initialize(name, description, price, nut)
  #   @name = name
  #   @description = description
  #   @price = price
  #   @nut = true
  # end
  #
  # def name
  #   @name
  # end
  #
  # def name=(new_name)
  #   @name = new_name
  # end
  #
  # def description
  #   @description
  # end
  #
  # def description=(new_description)
  #   @description = new_description
  # end
  #
  # def price
  #   @price
  # end
  #
  # def price=(new_price)
  #   @price = new_price
  # end
  #
  # def nut
  #   @nut
  # end

  def to_s
    'wake up'
  end

end
