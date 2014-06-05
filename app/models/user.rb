class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :libraries
  has_many :notes, dependent: :destroy
  has_many :links, through: :notes

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
        user.name = auth.info.name
        user.email = auth.info.email
        user.picture = auth.info.picture
        user.bookmark_token = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
      end
    end
  end


end
