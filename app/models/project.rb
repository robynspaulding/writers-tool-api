class Project < ApplicationRecord
  has_many :characters
  has_many :worlds
  has_many :notes
end
