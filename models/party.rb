class Party < ActiveRecord::Base

  has_many(:orders)
  has_many(:foods, through: :orders)

  def to_s
    'sippin'
  end
end
