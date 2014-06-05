class Library < ActiveRecord::Base
  has_many :links
  has_and_belongs_to_many :users
end
