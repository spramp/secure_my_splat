class Account < ActiveRecord::Base

  include BCrypt

  def password = (pwd)
    self.password_digest = BCrypt::Password.create(pwd)
  end

  def password
    BCrypt::Password.new(self.password_digest)
  end

end
