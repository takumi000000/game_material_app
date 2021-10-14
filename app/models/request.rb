class Request < ApplicationRecord
  def order_user
    return User.find(self.order_user_id)
  end
end
