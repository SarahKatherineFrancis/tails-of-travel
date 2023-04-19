class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments

  attr_accessor :main_photo
end
