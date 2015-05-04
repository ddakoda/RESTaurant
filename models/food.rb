class Food < ActiveRecord::Base
  has_many(:orders)
  has_many(:parties, through: :orders)x

  def to_s
    'wake up'
  end

end
