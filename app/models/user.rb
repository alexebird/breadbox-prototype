require 'digest/sha2'

class User < ActiveRecord::Base
  validates_presence_of :email, :name, :password
  validates_uniqueness_of :email
  validates_length_of :password, :in => 6..20,
    :if => :new_record?

  before_create { |user| user.password = User.salt_password(user.password) }

  def self.salt_password(password)
    return password unless password
    Digest::SHA2.hexdigest(password + 'SdFAjLkZsDGf7905Q34hJKXasFbbbbbbb')
  end
end
