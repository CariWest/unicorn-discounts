class Trip < ActiveRecord::Base
  has_many :reservations
end
