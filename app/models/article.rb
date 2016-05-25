class Article < ActiveRecord::Base
  validates :move_in_date, presence: true
  validates :new_address, presence: true, length: {minimum: 5}
  validates :new_postal_code, presence: true, numericality: true
end
