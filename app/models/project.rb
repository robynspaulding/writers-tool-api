class Project < ApplicationRecord
  belongs_to :user
  
  has_many :characters
  has_many :worlds
  has_many :notes
end
