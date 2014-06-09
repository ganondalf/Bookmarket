class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :libraries
  has_many :notes, dependent: :destroy
  has_many :links, through: :notes

  validates :email, :uniqueness => {:case_sensitive => false}

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable,     :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]

 def self.from_omniauth(auth)
    if user = User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user
    else
      where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.first_name = auth.info.first_name
        user.last_name = auth.info.last_name
        user.email = auth.info.email
        user.picture = auth.info.picture
        user.bookmark_token = User.bookmark_token
      end
    end
  end

  def initials
    first_letter= self.first_name[0].upcase
    second_letter=self.last_name[0].upcase
    return first_letter + second_letter
  end

  def self.bookmark_token
    return (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end


end
