class Link < ActiveRecord::Base
  belongs_to :library
  has_many :notes, dependent: :destroy
  has_many :users, through: :notes

  def self.clean_source(websource)
    websource.slice!("http://")
    websource.slice!("https://")
    websource.slice!("www.")
    return websource.capitalize
  end

  def self.clean_title(webtitle)
    return webtitle.split(" - ")[0]
  end

end
