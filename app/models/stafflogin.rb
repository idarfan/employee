require 'digest/sha2'
class Stafflogin < ActiveRecord::Base
  before_save :passowrd_fix
  
  def self.find_use_password(name , password)
    return first(:conditions => ["name = ? AND password = ?" , name , Digest::SHA2.hexdigest(password)])
  end
  
  def passowrd_fix
    if self.password.strip != "" && self.password_change
      self.password = Digest::SHA2.hexdigest(password)
    end
  end
end