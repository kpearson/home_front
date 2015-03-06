class User < ActiveRecord::Base
  has_many :tiles

  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(provider: auth.provider, uid: auth.provider)

   # user.email = auth.info.email
    user.uid   = auth.info.uid
    user.name  = auth.info.name
    user.save
    user
  end
end
