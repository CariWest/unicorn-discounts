class LineItem < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :item
end
