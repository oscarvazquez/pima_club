class User < ActiveRecord::Base
  has_secure_password
  has_many :subscriptions, dependent: :destroy

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :first_name, presence: true

    def self.from_omniauth(auth)
	    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
	      user.email = auth.info.email
	      user.provider = auth.provider
	      user.uid = auth.uid
	      user.first_name = auth.info.name
	      user.oauth_token = auth.credentials.token
	      user.password = "password"
	      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	      user.save
	    end
  	end

    def self.user_info(id)
      if id != nil
        @user = User.find(id)
        if @user
          @user = User.select(:first_name, :last_name, :email).find(id)
        end
      end
    end

    def self.check_role(id) 
      if id != nil
        user = User.find(id)
        if user.role == "admin"
          return true
        else 
          return false
        end
      else
        return false
      end
    end


end
