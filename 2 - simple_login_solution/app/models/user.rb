class User < ActiveRecord::Base
  has_secure_password
  validates :username,
    presence: true,
    uniqueness: true

  def self.confirm field
    found_user = User.where(username: field).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
  end
end
