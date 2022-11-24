class State < ApplicationRecord
  belongs_to :country
  has_many :resorts , dependent: :destroy
end