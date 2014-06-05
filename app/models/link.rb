class Link < ActiveRecord::Base
  belongs_to :library
  has_many :annotations, dependent: :destroy
  has_many :users, through: :notes
end
