class Link < ActiveRecord::Base
  belongs_to :library
  has_many :notes, dependent: :destroy
  has_many :users, through: :notes
end
