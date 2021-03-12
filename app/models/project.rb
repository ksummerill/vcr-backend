class Project < ApplicationRecord
  has_many :supplies
  has_many :inventories
  has_many :votes
end
