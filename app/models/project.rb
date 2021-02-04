class Project < ApplicationRecord
  has_many :supplies
  has_one :inventory
end
