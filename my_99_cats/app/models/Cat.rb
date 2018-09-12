require 'date'
require 'action_view'
require 'action_view/helpers'
include ActionView::Helpers::DateHelper

class Cat < ApplicationRecord
  COLORS = [
    "black",
    "white",
    "tabby",
    "black_and_white",
    "grey",
    "calico"
  ]
  
  validates :birth_date, :name, :description, presence: true 
  validates :sex, inclusion: { in: %w(M F),
    message: "%{value} is not a valid sex" }
  validates :color, inclusion: { in: COLORS,
    message: "%{value} is not a valid color" }
    
  
  
  def age
    time_ago_in_words(self.birth_date)   
  end 
  
  
end