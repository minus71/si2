class User < ActiveRecord::Base
  attr_accessible :account_name, :email, :password
  def self.login (user, password)
    found_user = User.find_by_account_name(user)
    if found_user
      if found_user.password == password
        return found_user
      end
    end
    return nil
  end
end
