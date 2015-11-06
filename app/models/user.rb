  class User < ActiveRecord::Base
    validates :username, presence: true, length: {maximum: 50}
    validates :password, presence: true, length: {minimum: 6}
has_secure_password
before_save :encrypt_password
after_save :clear_password
def encrypt_password
  if password.present?
    self.salt = BCrypt::Engine.generate_salt
    self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
  end
end
def clear_password
  self.password = nil
end
end
