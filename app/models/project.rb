class Project < ApplicationRecord
  has_many :characters
  has_many :worlds
end
