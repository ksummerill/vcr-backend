class Project < ApplicationRecord
  has_many :supplies
  has_many :inventories
end
